import 'package:flutter/material.dart';
import 'package:ristek_activity_tracker/widgets/activity_card.dart';
import 'package:ristek_activity_tracker/widgets/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Profile(
            name: "Mohammad Zidane Kurnianto",
            npm: "25067420",
            bio: "Sebatas mencintai koding.",
            totalXp: 1500,
          ),
        ],
      ),
    );
  }
}
