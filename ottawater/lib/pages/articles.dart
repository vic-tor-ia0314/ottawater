import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/core/theme/app_icons.dart';
import 'bottom_nav_bar.dart';

void main() {
  runApp(const WhatCanIDo());
}

class WhatCanIDo extends StatelessWidget {
  const WhatCanIDo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formatted Text Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles', style: TextStyle(color: AppColors.accent2),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: const TextSpan(
            style: TextStyle(color: AppColors.accent2),
            children: [
              TextSpan(
                text: 'Single-Use Plastics and Microplastics\n\n', 
                style: TextStyle(decoration: TextDecoration.underline, fontSize: 20, fontWeight: FontWeight.bold)
              ),
              TextSpan(
                text: '\tOften, when thinking of environmental conservation, one of the first things that pop to mind is reducing single-use plastic—for instance, the transition from plastic straws to paper straws. This is not for no reason. Plastic can pollute environments for hundreds to thousands of years, impacting numerous different animals, plants, and humans.\n\n', 
                style: TextStyle(decoration: TextDecoration.none, fontSize: 18, fontWeight: FontWeight.normal)
              ),
              TextSpan(
                text: '\tPlastic, after being exposed to multiple environments and after being weathered down, can degrade into smaller pieces. Once these plastics become less than five millimetres in length, they become microplastics. Microplastics can be found everywhere in day-to-day life: they can be found in trash, cosmetics, cleaning products, fabrics, and numerous other products. Often, they pass through water filtration systems in homes and eventually end up in the ocean, contributing to microplastic marine pollution.\n\n', 
                style: TextStyle(decoration: TextDecoration.none, fontSize: 18, fontWeight: FontWeight.normal)
              ),
              TextSpan(
                text: '\tPlastic pollution is not limited to microplastics, of course. Many people are aware of how larger pieces of plastic often choke and kill marine animals, such as sea turtles. An estimated 1 million plus sea animals die due to plastic pollution every year. This is from an approximate 75 to 199 million tons of plastic waste currently in our oceans, with a yearly increase of 33 billion pounds.\n\n', 
                style: TextStyle(decoration: TextDecoration.none, fontSize: 18, fontWeight: FontWeight.normal)
              ),
              TextSpan(
                text: '\tAlthough all these numbers may seem frightening, there is one easy way that you can help today: reduce your use of single-use plastics. These are any plastic products that you use only one time before disposing of them. For instance, plastic grocery bags, bottled water, coffee cups, plastic straws, and more. Instead, shift to more reusable options—reusable bags, reusable water bottles, metal or glass cups and straws. Even small changes like this can result in major improvements in plastic pollution in the Ottawa River and, on a larger scale, our oceans. You can make a difference today, even if small.\n\n', 
                style: TextStyle(decoration: TextDecoration.none, fontSize: 18, fontWeight: FontWeight.normal)
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNav(),
    );
  }
}