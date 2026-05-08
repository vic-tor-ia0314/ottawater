import 'package:flutter/material.dart';
import 'package:ottawater/pages/article1_fr.dart';
import 'package:ottawater/pages/article2_fr.dart';
import 'package:ottawater/pages/article3_fr.dart';
import 'bottom_nav_bar_fr.dart';

class ArticleMenu extends StatelessWidget {
  const ArticleMenu({super.key});

  Widget buildCard({
    required String title,
    required String description,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200,
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Colors.black12,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),

                Container(
                  color: Colors.black.withOpacity(0.4),
                ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildCard(
            title: 'Plastiques à usage unique et microplastiques',
            description: 'Apprenez sur les plastiques nocifs et à quoi ils ressemblent.',
            imagePath: 'assets/images/plastic.webp',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Article1(),
                ),
              );
            },
          ),
          buildCard(
            title: 'Vêtements',
            description: 'Effets nocifs des vêtements sur l’environnement.',
            imagePath: 'assets/images/clothing.webp',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Article2(),
                ),
              );
            },
          ),
          buildCard(
            title: 'Les 3 R\'s',
            description: 'Comment aider correctement l’environnement.',
            imagePath: 'assets/images/rrr.webp',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Article3(),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavFr(),
    );
  }
}