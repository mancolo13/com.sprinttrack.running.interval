import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final splits = [
      {'km': '1 km', 'pace': '5:12 min/km', 'ele': '+4m', 'fast': false},
      {'km': '2 km', 'pace': '4:58 min/km', 'ele': '-2m', 'fast': true},
      {'km': '3 km', 'pace': '5:04 min/km', 'ele': '+1m', 'fast': false},
      {'km': '4 km', 'pace': '4:51 min/km', 'ele': '-6m', 'fast': true},
      {'km': '5 km', 'pace': '5:15 min/km', 'ele': '+12m', 'fast': false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kilometer Splits', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: splits.length,
        itemBuilder: (context, i) {
          final s = splits[i];
          final isFast = s['fast'] as bool;
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.card,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: isFast ? AppTheme.primary.withValues(alpha: 0.4) : Colors.transparent),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: isFast ? AppTheme.primary : AppTheme.surface,
                      child: Text('${i + 1}', style: TextStyle(color: isFast ? Colors.black : Colors.white, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 14),
                    Text(s['km'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                  ],
                ),
                Text(s['ele'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
                Text(s['pace'] as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: isFast ? AppTheme.primary : Colors.white)),
              ],
            ),
          );
        },
      ),
    );
  }
}
