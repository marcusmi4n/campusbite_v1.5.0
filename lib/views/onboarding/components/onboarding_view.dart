import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Add Lottie package

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';
import '../data/onboarding_model.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.data,
  });

  final OnboardingModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Add Logo Image on the First Screen
        if (data.isFirstPage)
          Padding(
            padding: const EdgeInsets.only(top: AppDefaults.padding * 2),
            child: Image.asset(
              'assets/images/campusbite_logo.png', // Replace with your logo path
              width: 150,
              height: 150,
            ),
          ),

        // Replace Network Image with Lottie Animation
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(AppDefaults.padding * 2),
            child: data.isFirstPage
                ? Lottie.asset(
                    'assets/animations/food_delivery.json', // Lottie animation for the first screen
                    fit: BoxFit.contain,
                  )
                : NetworkImageWithLoader(
                    data.imageUrl,
                    fit: BoxFit.contain,
                  ),
          ),
        ),

        // Headline and Description
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            children: [
              Text(
                data.headline,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color:
                          AppColors.primary, // Use primary color for headline
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Text(
                  data.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600], // Use grey for description
                  ),
                ),
              ),
            ],
          ),
        ),

        // Custom Circular Ring (Loading Bar)
        if (data.isLastPage)
          Padding(
            padding: const EdgeInsets.only(top: AppDefaults.padding),
            child: Container(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.primary), // Use primary color
                strokeWidth: 4,
              ),
            ),
          ),
      ],
    );
  }
}
