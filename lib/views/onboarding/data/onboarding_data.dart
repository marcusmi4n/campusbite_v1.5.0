import 'package:flutter/material.dart';
import '../data/onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      // Asset image
      imageUrl: 'assets/images/campusbite_logo.png', // Your image path
      headline: 'Browse all the category',
      description: 'Discover all available food options on campus',
      isLottie: false,
    ),
    OnboardingModel(
      // First Lottie animation
      imageUrl: 'assets/animations/student_eating.json', // Lottie file
      headline: 'Amazing Discounts & Offers',
      description: 'Get exclusive student discounts on every order',
      isLottie: true,
    ),
    OnboardingModel(
      // Second Lottie animation
      imageUrl: 'assets/animations/food_delivery.json', // Lottie file
      headline: 'Fast Delivery',
      description: 'Get your food delivered in under 30 minutes',
      isLottie: true,
    ),
  ];
}
