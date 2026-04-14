import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/core/theme/app_icons.dart';
import 'bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double levelProgress = 0.0; // 0.0 → 1.0 (0% → 100%)

  void logActivity() {
    setState(() {
      levelProgress += 0.1; // increases by 10% each click

      if (levelProgress > 1.0) {
        levelProgress = 1.0; // cap at 100%
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 80,
        leading: IconButton(
          icon: Image.asset(
            AppIcons.logo,
            width: 75,
            height: 75,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'OttaWater',
          style: TextStyle(
            color: AppColors.textcolor,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.button,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: Text(
                "DONATE",
                style: TextStyle(
                  color: AppColors.textcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 35,
              color: AppColors.textcolor,
            ),
          ),

          const SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: levelProgress,
                  backgroundColor: Colors.grey.shade300,
                  color: Colors.green,
                  minHeight: 10,
                ),
                const SizedBox(height: 8),
                Text(
                  "Level Progress: ${(levelProgress * 100).toInt()}%",
                  style: const TextStyle(
                    color: AppColors.textcolor,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),
          Expanded(
            child: BottomButtons(
              spacing: 60,
              alignment: MainAxisAlignment.end,

              leftButton: ElevatedButton.icon(
                onPressed: logActivity,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.button,
                  foregroundColor: AppColors.textcolor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  minimumSize: const Size(120, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: const Icon(Icons.add, size: 28),
                label: const Text(
                  "Log an activity",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              rightButton: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.button,
                  foregroundColor: AppColors.textcolor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  minimumSize: const Size(120, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: const Icon(Icons.question_mark, size: 28),
                label: const Text(
                  "What can I do?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: AppBottomNav(currentIndex: 0),
    );
  }
}
class UpperHalfCenteredText extends StatelessWidget {
  final String text;
  final double fontSize;

  const UpperHalfCenteredText({
    super.key,
    required this.text,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment(0, -0.4),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: AppColors.textcolor
          ),
        ),
      ),
    );
  }
}

class BottomButtons extends StatelessWidget {
  final Widget leftButton;
  final Widget rightButton;
  final double spacing;
  final MainAxisAlignment alignment;

  const BottomButtons({
    super.key,
    required this.leftButton,
    required this.rightButton,
    this.spacing = 16,
    this.alignment = MainAxisAlignment.end, // default = bottom
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 150),
        child: Column(
          mainAxisAlignment: alignment, // controls vertical position
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                leftButton,
                SizedBox(width: spacing),
                rightButton,
              ],
            ),
          ],
        ),
      ),
    );
  }
}