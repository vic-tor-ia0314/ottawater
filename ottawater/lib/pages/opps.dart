import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';

class OpportunitiesPage extends StatefulWidget {
  const OpportunitiesPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNav(currentIndex: 2),
    );
  }

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => throw UnimplementedError();
}