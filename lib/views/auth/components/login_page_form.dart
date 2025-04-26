import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_themes.dart';
import '../../../core/utils/validators.dart';
import 'login_button.dart';

class LoginPageForm extends StatefulWidget {
  const LoginPageForm({super.key});

  @override
  State<LoginPageForm> createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageForm> {
  final _key = GlobalKey<FormState>();
  bool _isPasswordShown = false;
  final Color _iconColor = const Color.fromARGB(255, 44, 102, 59);

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordShown = !_isPasswordShown;
    });
  }

  void _handleLogin() {
    if (_key.currentState?.validate() ?? false) {
      Navigator.pushNamed(context, AppRoutes.entryPoint);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.defaultTheme.copyWith(
        inputDecorationTheme: AppTheme.secondaryInputDecorationTheme,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Student Number Field
              const Text("Student Number"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                validator:
                    Validators.requiredWithFieldName('Student Number').call,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: _iconColor),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
              const SizedBox(height: AppDefaults.padding),

              // Password Field
              const Text("Password"),
              const SizedBox(height: 8),
              TextFormField(
                validator: Validators.password.call,
                onFieldSubmitted: (_) => _handleLogin(),
                textInputAction: TextInputAction.done,
                obscureText: !_isPasswordShown,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: _iconColor),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordShown
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: _iconColor,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.forgotPassword),
                  child: const Text('Forgot Password?'),
                ),
              ),

              // Login Button
              LoginButton(onPressed: _handleLogin),
            ],
          ),
        ),
      ),
    );
  }
}
