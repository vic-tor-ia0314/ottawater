import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/core/theme/app_icons.dart';
import 'bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 80,
        leading: IconButton(
          icon: Image.asset(AppIcons.logo,
            width: 75,
            height: 75,
          ),
          onPressed: () {},
        ),
        title: const Text('OttaWater', style: TextStyle(color: AppColors.textcolor, fontSize: 28)),
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
          UpperHalfCenteredText(text: "Welcome!", fontSize: 35),
    
          BottomButtons(
            spacing: 60,
            alignment: MainAxisAlignment.end,
            leftButton: ElevatedButton.icon(
              onPressed: () {},
                style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.button,
                foregroundColor: AppColors.textcolor,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                minimumSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: Icon(Icons.add, size: 28),
              label: Text(
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
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                minimumSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: Icon(Icons.question_mark, size: 28),
              label: Text(
                "What can I do?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
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