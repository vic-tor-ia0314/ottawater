import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'bottom_nav_bar.dart';
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

class BeachMapPage extends StatefulWidget {
  const BeachMapPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BeachMapPageState createState() => _BeachMapPageState();
}

class _BeachMapPageState extends State<BeachMapPage> {
  List<Marker> markers = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final beaches = await loadAndMergeCSVs();

    setState(() {
      markers = beaches.map((beach) {
        return Marker(
          width: 40,
          height: 40,
          point: LatLng(beach.lat, beach.lng),
          child: GestureDetector(
            onTap: () {
              getWaterQualityScore(beach.pollution);
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(beach.name),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Water Quality Score",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        "${getWaterQualityScore(beach.pollution)} / 100",
                        style: TextStyle(fontSize: 22),
                      ),

                      const SizedBox(height: 8),

                      LinearProgressIndicator(
                        value: getWaterQualityScore(beach.pollution) / 100,
                        backgroundColor: Colors.grey[300],
                        color: getScoreColor(getWaterQualityScore(beach.pollution)),
                        minHeight: 10,
                      ),

                      const SizedBox(height: 12),

                      Text(
                        getScoreNote(getWaterQualityScore(beach.pollution)),
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),

                      const SizedBox(height: 16),

                      Divider(),

                      const SizedBox(height: 8),

                      Text(
                        "Raw E. coli number: ${beach.pollution}",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              );
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
      return "Good water quality — generally safe for swimming.";
    } else if (score >= 40) {
      return "Moderate quality — swim with caution.";
    } else {
      return "Poor water quality — not recommended for swimming.";
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
      appBar: AppBar(title: const Text("Ottawa Beaches Water Quality Map", style: TextStyle(color: AppColors.textcolor))),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(45.4215, -75.6972),
          initialZoom: 11,
        ),
        children: [
          TileLayer(
            urlTemplate:
                "https://tiles.stadiamaps.com/tiles/alidade_smooth/{z}/{x}/{y}{r}.png",
            userAgentPackageName: 'com.ottawater.app',
            maxZoom: 20,
          ),
          MarkerLayer(markers: markers),
        ],
      ),
      bottomNavigationBar: AppBottomNav(currentIndex: 1),
    );
  }
}