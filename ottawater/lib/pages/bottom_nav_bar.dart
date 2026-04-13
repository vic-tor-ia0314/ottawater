import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/core/theme/app_icons.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;

  const AppBottomNav({
    super.key,
    required this.currentIndex,
  });

  void _onTap(BuildContext context, int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/maps');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/opportunities');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onTap(context, index),

      backgroundColor: AppColors.primary, // replace with AppColors.primary
      unselectedItemColor: AppColors.accent1,
      selectedItemColor: AppColors.accent2,
      type: BottomNavigationBarType.fixed,

      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            AppIcons.home,
            width: 50,
            height: 50,
            ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AppIcons.maps,
            width: 50,
            height: 50,
            ),
          label: "Maps",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            AppIcons.opps,
            width: 50,
            height: 50,
            ),
          label: "Opportunities",
        ),
      ],
    );
  }
}