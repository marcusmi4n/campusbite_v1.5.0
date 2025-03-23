import 'package:flutter/material.dart';
import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';
import '../data/onboarding_model.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/constants/app_icons.dart';

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
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(AppDefaults.padding * 2),
            child: NetworkImageWithLoader(
              data.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            children: [
              Text(
                data.headline,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto', // Using custom font
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Text(
                  data.description,
                  textAlign: TextAlign.center,
                ),
              ),
              // Gradient Button (Circular)
              ElevatedButton(
                onPressed: () {
                  // Navigate to the next page or action
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: Colors.transparent, // Transparent to apply gradient
                  onPrimary: Colors.white, // Icon color
                  padding: EdgeInsets.all(20),
                  elevation: 5,
                  side: BorderSide(color: Colors.orange), // Optional border
                  shadowColor: Colors.orange, // Shadow effect
                ).copyWith(
                  backgroundColor: MaterialStateProperty.all(
                    LinearGradient(
                      colors: [
                        Color(0xFFFF7043),
                        Color(0xFFFF9800)
                      ], // Orange gradient
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(Rect.fromLTRB(0.0, 0.0, 200.0, 70.0)),
                  ),
                ),
                child: SvgPicture.asset(
                  AppIcons.arrowForward,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
