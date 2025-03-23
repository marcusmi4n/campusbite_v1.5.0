import '../../../core/constants/app_images.dart';
import 'onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      imageUrl: AppImages
          .onboarding1, // Replace with Lottie animation for the first screen
      headline: 'Welcome to CampusBite!',
      description: 'Order delicious food from your favorite campus vendors.',
      isFirstPage: true, // This is the first screen
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding2,
      headline: 'Amazing Discounts & Offers',
      description:
          'Enjoy exclusive discounts and offers on your favorite meals.',
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding3,
      headline: 'Delivery in 30 Min',
      description: 'Get your food delivered quickly and conveniently.',
      isLastPage: true, // This is the last screen
    ),
  ];
}
