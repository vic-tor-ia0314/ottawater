import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/pages/articlemenu_fr.dart';
import 'bottom_nav_bar_fr.dart';

void main() {
  runApp(const Article3());
}

class Article3 extends StatelessWidget {
  const Article3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The 3 R\'s',
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
                'assets/images/rrr.webp',
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
                          'Les 3 R\'s\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tAu collège, vous avez probablement entendu parler des 3 R dans la conservation de l’environnement : Réduire, Réutiliser, Recycler. Bien sûr, cela peut devenir ennuyeux après un certain temps, mais s’acquitter de ce motto fera une différence. Cela limitera non seulement la quantité de plastique que vous produisez, mais réduira également la quantité de nouveau plastique qui circule.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tLa première R, réduire, consiste à produire moins d’ordures plastiques. Afin de s’y tenir, effectuez des décisions réfléchies et des priorisations. N’achetez que ce dont vous avez besoin, et essayez d’acheter des produits réutilisables avec un emballage limité. Par exemple, essayez d’être conscient de la quantité de vêtements ou de produits nouveaux que vous achetez. Consultez notre article sur les « plastiques à usage unique et microplastiques » pour en savoir plus sur les façons dont vous pouvez être plus respectueux de l’environnement avec ce que vous achetez!\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tLa deuxième R, réutiliser, limite la quantité de nouveau plastique en circulation en préservant plutôt le plastique ancien qui a déjà été produit. Cette R signifie que, lorsque c’est possible, vous devriez essayer d’utiliser quelque chose à nouveau, ou de réparer quelque chose de cassé, plutôt que d’acheter quelque chose de neuf. Cela inclut des choses telles que la réparation d’un téléphone portable cassé plutôt que d’en acheter un nouveau, et la réutilisation de choses quotidiennes comme les bouteilles d’eau ou les sacs.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tLa dernière R, recycler, consiste à donner à quelque chose une nouvelle vie plutôt que de le faire finir dans un décharge. Ces produits peuvent ensuite être transformés en autre chose. Cela signifie être attentif auxquelles boîtes certains matériaux vont. Environ la moitié de tous les déchets ménagers peuvent être recyclés ; cela inclut des choses telles que l’aluminium, le verre, le papier et le plastique. La prochaine fois que vous allez jeter quelque chose, réfléchissez à savoir s’il peut être recyclé et transformé en quelque chose de nouveau.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tEn suivant les trois R quand c’est possible, vous ferez une différence en réduisant la pollution plastique! Chaque fois que vous êtes sur le point de jeter quelque chose, réfléchissez à savoir s’il peut être sauvé en utilisant les trois R.\n\n',
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