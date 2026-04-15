import 'package:flutter/material.dart';
import 'package:ottawater/pages/home_page.dart';
import 'package:ottawater/pages/maps.dart';
import 'package:ottawater/pages/opps.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/maps': (context) => const BeachMapPage(),
        '/opportunities': (context) => const OpportunitiesPage(),
      },
    );
  }
}