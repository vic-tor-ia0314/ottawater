import 'package:flutter/material.dart';
import 'package:ottawater/pages/article1.dart';
import 'package:ottawater/pages/article2.dart';
import 'package:ottawater/pages/article3.dart';
import 'bottom_nav_bar.dart';

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
            title: 'Single-Use Plastics and Microplastics',
            description: 'Learn about harmful plastics and what they look like.',
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
            title: 'Clothing',
            description: 'Harmful effects of clothing on the environment',
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
            title: 'The 3 R\'s',
            description: 'How to properly help the environment.',
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
      bottomNavigationBar: const AppBottomNav(),
    );
  }
}