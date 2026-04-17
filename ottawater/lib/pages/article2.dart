import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/pages/articlemenu.dart';
import 'bottom_nav_bar.dart';

void main() {
  runApp(const Article2());
}

class Article2 extends StatelessWidget {
  const Article2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothing',
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
                          'Clothing\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tMicroplastics—small fragments of plastic less than 5 mm wide—often end up in rivers and oceans, since they can pass through many filtration systems. These small pieces of plastic can then be swallowed by sea creatures or caught in the gills of fish, harming aquatic environments. But where do microplastics come from? One of the major answers is clothing.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tPlastic, after being exposed to multiple environments and after being weathered down, can degrade into smaller pieces. Once these plastics become less than five millimetres in length, they become microplastics. Microplastics can be found everywhere in day-to-day life: they can be found in trash, cosmetics, cleaning products, fabrics, and numerous other products. Often, they pass through water filtration systems in homes and eventually end up in the ocean, contributing to microplastic marine pollution.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tThe United Nations reports that a “single laundry load of polyester clothes can discharge as many as 700 000 microplastic fibres”. The fashion industry is responsible for around 35% of the microplastics in our oceans today. Furthermore, it also emits 10% of global carbon emissions due to the exorbitant amount of textiles created annually. Reducing the number of synthetic textiles—artificial fabrics that contain plastic—and changing instead to natural fabrics can significantly reduce microplastic pollution. Furthermore, natural textiles are often more durable; this means that if demand for more durable, natural clothing is driven up and demand for synthetic fabric is reduced, less textiles will be produced overall. This will reduce carbon emissions and help mitigate the effects of climate change for everybody.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tIt is not only the clothing itself that increases microplastic pollution, but often the way you wash it. Many of the most popular detergent brands contain these small pieces of plastic—in fact, one study investigated 300 detergents and found that a whopping 119 of them contained microplastics. Changing from big-brand detergents to plastic-free ones can make a large difference in plastic pollution in local rivers and in larger oceans.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tThere are easy ways that you can reduce your microplastic output today. For instance, switching from synthetic textiles—of which the most common are polyester, nylon, acrylic, and fleece—to 100% natural fabrics—such as cotton, bamboo, and wool—will make a substantial difference. Furthermore, check your detergents! If they contain plastic, try to switch to a plastic-free alternative, such as Clothes Doctor or Homethings eco-detergents. Make a difference in pollution and climate change today!\n\n',
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
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNav(),
    );
  }
}