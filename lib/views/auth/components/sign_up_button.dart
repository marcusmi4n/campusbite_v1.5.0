import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDefaults.padding * 2),
      child: Row(
        children: [
          Text(
            'Sign Up',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.numberVerification);
            },
            style: ElevatedButton.styleFrom(
              elevation: 1,
              backgroundColor:
                  const Color.fromARGB(255, 44, 102, 59), // Primary orange
              foregroundColor: Colors.white, // Icon color
              padding: const EdgeInsets.all(16), // Better touch target
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
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
    );
  }
}
