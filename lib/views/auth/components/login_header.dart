import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPageHeader extends StatelessWidget {
  const LoginPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Lottie.asset(
              'assets/animations/food_delivery.json',
              fit: BoxFit.contain,
              repeat: true,
              animate: true,
            ),
          ),
        ),
        const SizedBox(height: 16), // Added spacing between animation and text
        Text(
          'Welcome to',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          'CampusBite',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 247, 142, 5),
              ),
        ),
      ],
    );
  }
}
