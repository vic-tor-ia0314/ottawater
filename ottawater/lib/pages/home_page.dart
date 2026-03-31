import 'package:flutter/material.dart';
import 'package:ottawater/core/theme/app_colors.dart';
import 'package:ottawater/core/theme/app_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("TEST SCREEN"),
      ),
    );
  }
}
      
      
      
/*    
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AppIcons.logo),
        ),

        title: const Text(
          'Welcome',
          style: TextStyle(color: AppColors.textcolor),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: AppColors.secondary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Button',
                style: TextStyle(color: AppColors.textcolor),
              ),
            ),
          ),
        ],
      ),

      body: const Center(
        child: Text(
          'Welcome!',
          style: TextStyle(
            fontSize: 24,
            color: AppColors.textcolor,
          ),
        ),
      ),
    );
  }
}
*/