import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/core/theme/app_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OttaWater', style: TextStyle(color: AppColors.textcolor)),
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
          UpperHalfCenteredText(text: "Welcome!", fontSize: 28),
    
          BottomButtons(
            spacing: 60,
            alignment: MainAxisAlignment.end,
            leftButton: ElevatedButton(
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
              child: Text("log an activity", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            rightButton: ElevatedButton(
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
              child: Text("what can I do?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        unselectedItemColor: AppColors.textcolor,
        selectedItemColor: AppColors.textcolor,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Maps",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake),
            label: "Opportunities",
          ),
        ],
      ),
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