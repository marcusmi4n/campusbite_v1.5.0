import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';
import 'components/onboarding_view.dart';
import 'data/onboarding_data.dart';
import 'data/onboarding_model.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  late PageController controller;
  List<OnboardingModel> items = OnboardingData.items;

  onPageChange(int value) {
    currentPage = value;
    setState(() {});
  }

  _gotoNextPage() {
    if (currentPage < items.length - 1) {
      controller.nextPage(
        duration: AppDefaults.duration,
        curve: Curves.ease,
      );
    } else {
      _gotoLoginSignUp();
    }
  }

  _gotoLoginSignUp() {
    Navigator.pushNamed(context, AppRoutes.introLogin);
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Skip Button (Top Right)
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: _gotoLoginSignUp,
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: AppColors.primary, // Use primary color for skip button
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Onboarding Content
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: onPageChange,
                itemCount: items.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return OnboardingView(
                    data: items[index],
                  );
                },
              ),
            ),

            // Next Button with Circular Progress Indicator
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                // Circular Progress Indicator
                TweenAnimationBuilder(
                  duration: AppDefaults.duration,
                  tween: Tween<double>(
                    begin: 0,
                    end: (1 / items.length) * (currentPage + 1),
                  curve: Curves.easeInOutBack,
                  builder: (context, double value, _) => SizedBox(
                    height: 70,
                    width: 70,
                    child: CircularProgressIndicator(
                      value: value,
                      strokeWidth: 6,
                      backgroundColor: AppColors.cardColor,
                      color: AppColors.primary, // Use primary color
                    ),
                  ),
                ),

                // Next Button with Gradient
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFFA500), Color(0xFFFF4500)], // Orange gradient
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: ElevatedButton(
                    onPressed: _gotoNextPage,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, // Make button transparent to show gradient
                      shadowColor: Colors.transparent,
                      shape: const CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    child: SvgPicture.asset(
                      AppIcons.arrowForward,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppDefaults.padding),
          ],
        ),
      ),
    );
  }
}