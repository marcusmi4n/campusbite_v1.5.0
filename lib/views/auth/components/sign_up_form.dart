import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/validators.dart';
import 'already_have_accout.dart';
import 'sign_up_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _obscurePassword = true; // Track password visibility state

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.margin),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppDefaults.boxShadow,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name Field
          const Text("Name"),
          const SizedBox(height: 8),
          TextFormField(
            validator: Validators.requiredWithFieldName('Name').call,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline, color: Colors.orange),
              border: OutlineInputBorder(
                borderRadius: AppDefaults.borderRadius,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.orange),
                borderRadius: AppDefaults.borderRadius,
              ),
            ),
          ),
          const SizedBox(height: AppDefaults.padding),

          // Student Number Field
          const Text("Student Number"),
          const SizedBox(height: 8),
          TextFormField(
            textInputAction: TextInputAction.next,
            validator: Validators.required.call,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.numbers, color: Colors.orange),
              border: OutlineInputBorder(
                borderRadius: AppDefaults.borderRadius,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.orange),
                borderRadius: AppDefaults.borderRadius,
              ),
            ),
          ),
          const SizedBox(height: AppDefaults.padding),

          // Password Field with Working Toggle
          const Text("Password"),
          const SizedBox(height: 8),
          TextFormField(
            validator: Validators.required.call,
            textInputAction: TextInputAction.next,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline, color: Colors.orange),
              border: OutlineInputBorder(
                borderRadius: AppDefaults.borderRadius,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.orange),
                borderRadius: AppDefaults.borderRadius,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                icon: SvgPicture.asset(
                  AppIcons.eye,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    _obscurePassword
                        ? Colors.orange.shade300
                        : Colors.orange.shade800,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppDefaults.padding),
          const SignUpButton(),
          const AlreadyHaveAnAccount(),
          const SizedBox(height: AppDefaults.padding),
        ],
      ),
    );
  }
}
