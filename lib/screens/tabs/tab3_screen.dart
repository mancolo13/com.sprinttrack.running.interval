import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final days = [
      {'d': 'Mon', 'km': 6.2, 'h': 70.0},
      {'d': 'Tue', 'km': 0.0, 'h': 0.0},
      {'d': 'Wed', 'km': 8.5, 'h': 95.0},
      {'d': 'Thu', 'km': 5.0, 'h': 55.0},
      {'d': 'Fri', 'km': 10.4, 'h': 120.0},
      {'d': 'Sat', 'km': 0.0, 'h': 0.0},
      {'d': 'Sun', 'km': 14.2, 'h': 150.0},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weekly Mileage', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.card,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('TOTAL THIS WEEK', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  const Text('44.3 km', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: days.map((d) {
                      final h = d['h'] as double;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 24,
                            height: h > 0 ? h : 4,
                            decoration: BoxDecoration(
                              color: h > 0 ? AppTheme.primary : Colors.white12,
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(d['d'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11)),
                        ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
