import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//import '../../../core/components/network_image.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Media Content
                Flexible(
                  child: AspectRatio(
                    aspectRatio: 1, // Square aspect ratio
                    child: Padding(
                      padding: const EdgeInsets.all(AppDefaults.padding * 2),
                      child: _buildMediaContent(),
                    ),
                  ),
                ),
                // Text Content
                Padding(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  child: Column(
                    children: [
                      Text(
                        data.headline,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppDefaults.padding),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppDefaults.padding * 2,
                        ),
                        child: Text(
                          data.description,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMediaContent() {
    if (data.isLottie) {
      return Lottie.asset(
        data.imageUrl,
        fit: BoxFit.contain,
        repeat: true,
        animate: true,
        frameRate: FrameRate(60),
        errorBuilder: (context, error, stackTrace) => _buildPlaceholder(),
      );
    } else {
      return Image.asset(
        data.imageUrl,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) => _buildPlaceholder(),
      );
    }
  }

  Widget _buildPlaceholder() {
    return Container(
      color: Colors.grey[200],
      alignment: Alignment.center,
      child: const Icon(Icons.image, size: 50, color: Colors.grey),
    );
  }
}
