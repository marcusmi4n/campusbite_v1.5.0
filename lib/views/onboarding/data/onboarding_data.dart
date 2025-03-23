import 'onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      imageUrl:
          'assets/images/campusbite_logo.png', // Replace with your image path
      headline: 'Welcome to CampusBite!',
      description: 'Order delicious food from your favorite campus vendors.',
    ),
    OnboardingModel(
      imageUrl:
          'assets/animations/student_eating.json', // Replace with your Lottie file
      headline: 'Amazing Discounts & Offers',
      description:
          'Enjoy exclusive discounts and offers on your favorite meals.',
    ),
    OnboardingModel(
      imageUrl:
          'assets/animations/food_delivery.json', // Replace with your Lottie file
      headline: 'Delivery in 30 Min',
      description: 'Get your food delivered quickly and conveniently.',
    ),
  ];
}
