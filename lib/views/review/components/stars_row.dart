import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class StarsRow extends StatelessWidget {
  const StarsRow({
    super.key,
    required this.label,
    required this.maxValue,
    required this.totalPercentage,
  });

  final String label;
  final String maxValue;
  final double totalPercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(label),
          const SizedBox(width: 8),
          Expanded(
            flex: 5,
            child: ClipRRect(
              borderRadius: AppDefaults.borderRadius,
              child: SizedBox(
                height: 10,
                child: LinearProgressIndicator(
                  value: totalPercentage / 100,
                  color: const Color.fromARGB(255, 44, 102, 59),
                  backgroundColor: AppColors.cardColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Text(
              maxValue,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
