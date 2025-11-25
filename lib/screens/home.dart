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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // * Profile
                Profile(
                  name: "Mohammad Zidane Kurnianto",
                  npm: "25067420",
                  bio: "Tidak hanya sebatas mencintai koding.",
                  totalXp: 1500,
                ),

                SizedBox(height: 40),

                // * Activity Header
                Text(
                  "Riwayat Aktivitas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),

                SizedBox(height: 20),

                // * Activity list
                Column(
                  spacing: 8,
                  children: [
                    ActivityCard(
                      title: "Belajar SQL",
                      date: "24 November 2025",
                      xp: 100,
                    ),
                    ActivityCard(
                      title: "Beli Dispatch di Steam",
                      date: "25 November 2025",
                      xp: -400,
                    ),
                    ActivityCard(
                      title: "Selesaikan Tugas OC Mobdev",
                      date: "25 November 2025",
                      xp: 200,
                    ),
                    ActivityCard(
                      title: "Selesaikan Proyek SBF PTI",
                      date: "29 November 2025",
                      xp: 100,
                    ),
                    ActivityCard(
                      title: "Belajar Fortran",
                      date: "2 Desember 2025",
                      xp: 900,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
