import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name, npm, bio;
  final int totalXp;
  const Profile({
    super.key,
    required this.name,
    required this.npm,
    required this.bio,
    required this.totalXp,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
