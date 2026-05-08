import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'bottom_nav_bar_fr.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:csv/csv.dart';

class Beach {
  final String name;
  final double lat;
  final double lng;
  final double pollution;

  Beach({
    required this.name,
    required this.lat,
    required this.lng,
    required this.pollution,
  });
}

class BeachMapPageFr extends StatefulWidget {
  const BeachMapPageFr({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BeachMapPageFrState createState() => _BeachMapPageFrState();
}

class _BeachMapPageFrState extends State<BeachMapPageFr> {
  List<Marker> markers = [];
  List<Beach> beaches = [];
  List<Beach> selectedBeaches = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final loadedBeaches = await loadAndMergeCSVs();

    setState(() {
      beaches = loadedBeaches;

      markers = beaches.map((beach) {
        return Marker(
          width: 40,
          height: 40,
          point: LatLng(beach.lat, beach.lng),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (!selectedBeaches.any((b) => b.name == beach.name)) {
                  selectedBeaches.add(beach);
                }
              });

              _showBeachDialog(beach);
            },
            child: Icon(
              Icons.location_pin,
              color: getColor(beach.pollution),
              size: 40,
            ),
          ),
        );
      }).toList();
    });
  }

  void _showBeachDialog(Beach beach) {
    final score = getWaterQualityScore(beach.pollution);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(beach.name),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Score de Qualité de l’Eau",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("$score / 100", style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: score / 100,
              backgroundColor: Colors.grey[300],
              color: getScoreColor(score),
              minHeight: 10,
            ),
            const SizedBox(height: 12),
            Text(getScoreNote(score)),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            Text(
              "Nombre brut d'E. coli: ${beach.pollution}",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }

  Color getColor(double pollution) {
    if (pollution < 100) return Colors.green;
    if (pollution < 200) return Colors.orange;
    return Colors.red;
  }

  double getWaterQualityScore(double pollution) {
    double score = 100 - (pollution / 3);
    if (score < 0) score = 0;
    if (score > 100) score = 100;
    return score.roundToDouble();
  }

  Color getScoreColor(double score) {
    if (score >= 70) return Colors.green;
    if (score >= 40) return Colors.orange;
    return Colors.red;
  }

  String getScoreNote(double score) {
    if (score >= 70) {
      return "Bonne qualité de l’eau — généralement sûre pour la natation.";
    } else if (score >= 40) {
      return "Qualité modérée — nager avec prudence.";
    } else {
      return "Mauvaise qualité de l’eau — non recommandée pour la natation.";
    }
  }

  Future<List<Beach>> loadAndMergeCSVs() async {
    final raw = await rootBundle.loadString('assets/WaterQuality.csv');
    List<List<dynamic>> csv = CsvToListConverter().convert(raw);

    Map<String, Beach> beachMap = {};

    for (int i = 1; i < csv.length; i++) {
      final row = csv[i];

      String name = row[0].toString();
      double lat = double.tryParse(row[1].toString()) ?? 0;
      double lng = double.tryParse(row[2].toString()) ?? 0;
      String characteristic = row[5].toString();
      double value = double.tryParse(row[6].toString()) ?? 0;

      if (characteristic.contains("E. coli")) {
        beachMap[name] = Beach(
          name: name,
          lat: lat,
          lng: lng,
          pollution: value,
        );
      }
    }
    return beachMap.values.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Carte de la Qualité de l’eau des Plages d’Ottawa",
          style: TextStyle(color: AppColors.textcolor),
        ),
      ),
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: FlutterMap(
              options: MapOptions(
                initialCenter: LatLng(45.4215, -75.6972),
                initialZoom: 11,
              ),
              children: [
                TileLayer(
                  urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                  userAgentPackageName: 'com.example.ottawater',
                ),
                MarkerLayer(markers: markers),
              ],
            ),
          ),
          Expanded(
            child: selectedBeaches.isEmpty
                ? const Center(
                    child: Text(
                      "Appuyez sur un marqueur de plage pour l'ajouter ici",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    itemCount: selectedBeaches.length,
                    itemBuilder: (context, index) {
                      final beach = selectedBeaches[index];
                      return ListTile(
                        leading: Icon(
                          Icons.location_pin,
                          color: getColor(beach.pollution),
                        ),
                        title: Text(beach.name),
                        subtitle: Text("E. coli: ${beach.pollution}"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "${beach.pollution}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: getColor(beach.pollution),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                setState(() {
                                  selectedBeaches.removeWhere(
                                    (b) => b.name == beach.name,
                                  );
                                });
                              },
                            ),
                          ],
                        ),
                        onTap: () => _showBeachDialog(beach),
                      );
                    },
                  ),
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavFr(),
    );
  }
}