import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/app_defaults.dart';
import '../../../core/routes/app_routes.dart';

class DeliverySuccessfullDialog extends StatelessWidget {
  const DeliverySuccessfullDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDefaults.padding * 3,
          horizontal: AppDefaults.padding,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AspectRatio(
              aspectRatio: 1 / 1,
              child: NetworkImageWithLoader(
                'https://i.imgur.com/DQqtvkL.png',
                fit: BoxFit.contain,
              ),
            ),
            const Text(
              'Hurray!!  we just delivered your',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '#15425050',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black),
                ),
                const Text(' Order Successfully.')
              ],
            ),
            const SizedBox(height: AppDefaults.padding),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.submitReview);
                },
                child: const Text('Rate The Product'),
              ),
            ),
            const SizedBox(height: AppDefaults.padding),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.entryPoint);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 44, 102, 59),
                  side:
                      const BorderSide(color: Color.fromARGB(255, 44, 102, 59)),
                ),
                child: const Text('Browse Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
