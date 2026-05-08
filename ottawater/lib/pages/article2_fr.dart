import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/pages/articlemenu_fr.dart';
import 'bottom_nav_bar_fr.dart';

void main() {
  runApp(const Article2());
}

class Article2 extends StatelessWidget {
  const Article2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vêtements',
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
                'assets/images/clothing.webp',
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
                          'Vêtements\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tLes microplastiques — de petits fragments de plastique de moins de 5 mm de largeur — finissent souvent dans les rivières et les océans, car ils peuvent passer à travers de nombreux systèmes de filtration. Ces petites particules de plastique peuvent ensuite être ingérées par des créatures marines ou se retrouver coincées dans les branchies des poissons, ce qui nuit aux écosystèmes aquatiques. Mais d’où viennent les microplastiques ? L’une des principales sources est l’habillement.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tLe plastique, une fois exposé à plusieurs environnements et après avoir été érodé, peut se dégrader en morceaux plus petits. Une fois que ces plastiques deviennent plus courts que cinq millimètres, ils deviennent des microplastiques. Les microplastiques peuvent être trouvés partout dans la vie quotidienne: ils peuvent être trouvés dans la poubelle, les cosmétiques, les produits de nettoyage, les tissus, et de nombreux autres produits. Souvent, ils passent à travers les systèmes de filtration de l’eau dans les maisons et finissent finalement dans l’océan, contribuant à la pollution marine par microplastiques.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tLes Nations Unies rapportent qu’une “seule charge de linge de vêtements en polyester peut libérer jusqu’à 700 000 fibres de microplastique”. L’industrie de la mode est responsable d’environ 35% des microplastiques dans nos océans aujourd’hui. De plus, elle émet également 10% des émissions mondiales de carbone en raison du volume exorbitant de textiles produits chaque année. Réduire le nombre de textiles synthétiques—des tissus artificiels qui contiennent du plastique—and changer plutôt vers des tissus naturels peut réduire significativement la pollution par microplastiques. De plus, les textiles naturels sont souvent plus durables; cela signifie que si la demande pour des vêtements plus durables, naturels est accrue et que la demande pour les tissus synthétiques est réduite, moins de textiles seront produits dans l’ensemble. Cela réduira les émissions de carbone et aidera à atténuer les effets du changement climatique pour tous.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tCe n’est pas seulement le vêtement lui-même qui augmente la pollution par microplastiques, mais souvent le mode de lavage. De nombreux fabricants de lessive populaires contiennent ces petits morceaux de plastique—en fait, une étude a investigué 300 lessives et a trouvé que 119 d’entre elles contenaient des microplastiques. Passer des lessives de grandes marques à des moins à base de plastique peut faire une grande différence dans la pollution par plastique dans les rivières locales et dans les océans plus larges.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tIl y a des façons simples de réduire votre production de microplastiques aujourd’hui. Par exemple, passer des textiles synthétiques—dont les plus courants sont le polyester, le nylon, l’acrylique et le fleece—à des tissus 100% naturels—comme le coton, le bambou et la laine—fera une différence considérable. De plus, vérifiez vos lessives ! Si elles contiennent du plastique, essayez de passer à une alternative sans plastique, telle que Clothes Doctor ou Homethings eco-detergents. Faites une différence dans la pollution et le changement climatique aujourd’hui!\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
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