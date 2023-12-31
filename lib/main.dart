// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp/pages/settings_page.dart';
import 'package:flutterapp/pages/profile_page.dart';
import 'package:flutterapp/pages/cards_page.dart';
import 'package:flutterapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),
        '/cardspage': (context) => CardsPage(),
      },
    );
  }
}
