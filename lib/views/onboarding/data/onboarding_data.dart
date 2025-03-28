//import 'package:flutter/material.dart';
import '../data/onboarding_model.dart';

class OnboardingData {
  /// Pre-cached onboarding items to prevent rebuilds
  static final List<OnboardingModel> items = _createOnboardingItems();

  /// Creates onboarding content with proper asset paths and theming
  static List<OnboardingModel> _createOnboardingItems() {
    return [
      OnboardingModel(
        imageUrl: 'assets/images/campusbite_logo.png',
        headline: 'Browse All Categories',
        description: 'Discover all available food options on campus',
        isLottie: false,
      ),
      OnboardingModel(
        imageUrl: 'assets/animations/student_eating.json',
        headline: 'Exclusive Student Discounts',
        description: 'Enjoy special offers just for campus students',
        isLottie: true,
      ),
      OnboardingModel(
        imageUrl: 'assets/animations/phone_food.json',
        headline: 'Lightning Fast Delivery',
        description: 'Get your meals in 30 minutes or less',
        isLottie: true,
      ),
    ];
  }

  /// Helper to get total onboarding screens count
  static int get itemCount => items.length;

  /// Safe item access with range checking
  static OnboardingModel getItem(int index) {
    assert(index >= 0 && index < items.length, 'Invalid onboarding index');
    return items[index];
  }
}
