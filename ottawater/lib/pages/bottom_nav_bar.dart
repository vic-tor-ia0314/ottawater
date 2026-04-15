import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/core/theme/app_icons.dart';
import 'package:ottawater/pages/home_page.dart';
import 'package:ottawater/pages/maps.dart';
import 'package:ottawater/pages/opps.dart';

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({super.key});

  void _goTo(BuildContext context, int index) {
    Widget page;

    switch (index) {
      case 0:
        page = const HomePage();
        break;
      case 1:
      page = const BeachMapPage();
      break;
      case 2:
        page = const OpportunitiesPage();
        break;
      default:
        return;
    }

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => _goTo(context, index),

      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primary,
      unselectedItemColor: AppColors.accent1,
      selectedItemColor: AppColors.accent2,

      items: [
        BottomNavigationBarItem(
          icon: Image.asset(AppIcons.home, width: 50, height: 50),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppIcons.maps, width: 50, height: 50),
          label: "Maps",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppIcons.opps, width: 50, height: 50),
          label: "Opportunities",
        ),
      ],
    );
  }
}