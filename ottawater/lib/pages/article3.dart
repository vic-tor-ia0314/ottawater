import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/pages/articlemenu.dart';
import 'bottom_nav_bar.dart';

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
                          'The 3 R\'s\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tIn school, you have probably heard of the 3 R’s in environmental conservation: Reduce, Reuse, Recycle. Of course it may get boring after a time, but adhering to this motto will make a difference. It will not only limit the amount of plastic that you are outputting, but also reduce the amount of new plastic that circulates.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tThe first R, reduce, is about producing less plastic waste. In order to stick to it, make smart decisions and prioritizations. Only buy things that you need, and try to buy re-usable products with limited packaging. For instance, try to be mindful about the amount of new clothes or products that you are buying. Check out our article on “Single-Use Plastics and Microplastics” to learn more about ways you can be environmentally smarter with what you buy!\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tThe second R, reuse, limits the amount of new plastic in circulation by instead preserving old plastic that has already been produced. This R means that, when possible, you should try to use something again, or repair something broken, rather than buying something new. This includes things such as repairing a broken cellphone rather than buying a new one, and reusing everyday things like water bottles or bags.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tThe final R, recycle, is about giving something a new life rather than having it end up in a landfill. These products can then be made into something else. This means being mindful about which boxes certain materials go. Around half of all household waste can be recycled; this includes things such as aluminum, glass, paper, and plastic. Next time you go to throw something about, think about whether it can be recycled and made into something new.\n\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\tBy following the three R’s when possible, you will be making a difference in reducing plastic pollution! Whenever you are about to throw something out, think about whether it can be saved using the three R’s.\n\n',
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