/*
 * Dikembangkan oleh Mohammad Zidane Kurnianto (2506584861)
 * Link Repo Github: https://github.com/Sharkfin07/ristek-activity-tracker
 * 
*/

import 'package:flutter/material.dart';
import 'package:ristek_activity_tracker/screens/home.dart';
import 'package:ristek_activity_tracker/screens/sign_in.dart';
import 'package:ristek_activity_tracker/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ristek Activity Tracker',
      theme: AppTheme.themeData,
      initialRoute: '/sign-in',
      routes: {
        '/sign-in': (context) => const SignInScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
