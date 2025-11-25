import 'package:flutter/material.dart';
import 'package:ristek_activity_tracker/themes/theme.dart';

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
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // * Profile Pic, NPM, and Name
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(6),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile-pic.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: textTheme.titleLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      npm,
                      style: textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // * Bio
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bio',
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                bio,
                style: textTheme.bodyLarge?.copyWith(color: Colors.black87),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // * XP
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total XP',
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '${_formatXp(totalXp)} XP',
                style: textTheme.titleLarge?.copyWith(
                  color: AppTheme.positive,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // * Format (.) per 3 digit
  String _formatXp(int value) {
    final digits = value.toString();
    var result = '';
    var counter = 0;

    for (var i = digits.length - 1; i >= 0; i--) {
      result = digits[i] + result;
      counter++;
      if (counter == 3 && i != 0) {
        result = '.$result';
        counter = 0;
      }
    }

    return result;
  }
}
