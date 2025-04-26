import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'app_chip.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDefaults.padding,
      ),
      child: Row(
        children: [
          AppChip(
            isActive: true,
            label: 'BreakFast',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Lunch',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Supper',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Snacks',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
