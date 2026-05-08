import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/pages/articlemenu_fr.dart';
import 'bottom_nav_bar_fr.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Article1());
}

class Article1 extends StatelessWidget {
  const Article1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single-Use Plastics and Microplastics',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/plastic.webp',
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),

              const SizedBox(height: 12),

              RichText(
                text: TextSpan(
                  style: const TextStyle(color: AppColors.accent2),
                  children: [
                    const TextSpan(
                      text:
                          'Plastiques à Usage Unique et Microplastiques\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tSouvent, lorsque l’on pense à la conservation de l’environnement, l’une des premières choses qui vient à l’esprit est la réduction des plastiques à usage unique — par exemple, la transition des pailles en plastique aux pailles en papier. Ce n’est pas sans raison. Le plastique peut polluer les environnements pendant des centaines, voire des milliers d’années, affectant de nombreux animaux, plantes et êtres humains.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tLe plastique, après avoir été exposé à plusieurs environnements et après s’être dégradé, peut se transformer en morceaux plus petits. Une fois que ces plastiques deviennent plus petits que cinq millimètres, ils deviennent des microplastiques. Les microplastiques peuvent être trouvés partout dans la vie quotidienne: ils peuvent être trouvés dans la poubelle, les cosmétiques, les produits d’entretien, les tissus, et de nombreux autres produits. Souvent, ils passent à travers les systèmes de filtration de l’eau dans les maisons et finissent finalement dans l’océan, contribuant ainsi à la pollution marine par microplastiques.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tLa pollution plastique n’est pas limitée aux microplastiques, bien sûr. De nombreuses personnes sont conscientes de la manière dont les morceaux plus grands de plastique peuvent souvent asphyxier et tuer les animaux marins, tels que les tortues de mer. On estime qu’un million d’animaux marins de plus meurent chaque année à cause de la pollution plastique. Cela provient d’environ 75 à 199 millions de tonnes de déchets plastiques actuellement dans nos océans, avec une augmentation annuelle de 33 milliards de livres.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tBien que tous ces nombres puissent sembler effrayants, il y a une façon simple de vous aider aujourd’hui: réduire votre utilisation des plastiques à usage unique. Ce sont tous les produits en plastique que vous utilisez une seule fois avant de les jeter. Par exemple, les sacs en plastique pour les courses, l’eau en bouteille, les tasses de café, les pailles en plastique, et bien plus encore. Au lieu de cela, basculez vers des options plus réutilisables—des sacs réutilisables, des bouteilles d’eau réutilisables, des tasses en métal ou en verre et des pailles. Même de petits changements comme celui-ci peuvent entraîner d’importantes améliorations dans la pollution plastique dans la rivière Ottawa et, à une plus grande échelle, dans nos océans. Vous pouvez faire la différence aujourd’hui, même si c’est petit.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text:
                          'https://www.plasticsoupfoundation.org/en/news/it-is-estimated-that-171-trillion-microplastic-particles-float-in-the-ocean\n',
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          final url = Uri.parse(
                            'https://www.plasticsoupfoundation.org/en/news/it-is-estimated-that-171-trillion-microplastic-particles-float-in-the-ocean',
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          }
                        },
                    ),
                    TextSpan(
                      text:
                          'https://oceanservice.noaa.gov/facts/microplastics.html\n',
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          final url = Uri.parse(
                            'https://oceanservice.noaa.gov/facts/microplastics.html',
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          }
                        },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArticleMenu(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.button,
                  foregroundColor: AppColors.textcolor,
                ),
                child: const Text('Retour'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavFr(),
    );
  }
}