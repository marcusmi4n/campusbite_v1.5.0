import 'onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      imageUrl:
          'assets/images/campusbite_logo.png', // Use the logo image for the first screen
      headline: 'Welcome to CampusBite',
      description:
          'Your go-to food delivery app for students, staff, and faculty on campus.',
    ),
    OnboardingModel(
      imageUrl:
          'assets/animations/student_eating.json', // Lottie animation for the second screen
      headline: 'Enjoy your meal!',
      description:
          'Get personalized food suggestions based on your mood or choice.',
    ),
    OnboardingModel(
      imageUrl:
          'assets/animations/food_delivery.json', // Lottie animation for the third screen
      headline: 'Quick & Easy Delivery',
      description:
          'Order food and get it delivered right to your location within the campus.',
    ),
  ];
}
