import 'package:flutter/material.dart';
import 'package:ristek_activity_tracker/themes/theme.dart';

// * Tadaaa reusability!
class ActivityCard extends StatelessWidget {
  final String title, date;
  final int xp;
  const ActivityCard({
    super.key,
    required this.title,
    required this.date,
    required this.xp,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isPositive = xp >= 0;

    // * Negative XP handling
    final xpColor = isPositive ? AppTheme.positive : theme.colorScheme.error;
    final xpPrefix = isPositive ? '+ ' : '- ';

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  date,
                  style: textTheme.bodyMedium?.copyWith(
                    color: Colors.black.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Text(
            '$xpPrefix${_formatXp(xp.abs())} XP',
            style: textTheme.titleMedium?.copyWith(
              color: xpColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  // * Format (Lagi)
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
