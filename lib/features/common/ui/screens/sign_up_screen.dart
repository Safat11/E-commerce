import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/core/extensions/localization_extension.dart';
import 'package:ecommerce/features/common/ui/screens/verify_otp_screen.dart';
import 'package:ecommerce/features/common/ui/widgets/app_logo.dart';
import 'package:ecommerce/l10n/app_localizations.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _deliveryAddressTEController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildForm(textTheme),
        ),
      ),
    );
  }

  Widget _buildForm( TextTheme textTheme) {
    return Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 32),
              const AppLogo(),
              const SizedBox(height: 24),
              Text(
                context.localizations.registerYourAccount,
                style: textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                context.localizations.getStartedWithYourDetails,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 32),
              TextFormField(
                controller: _emailTEController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: context.localizations.email,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _firstNameTEController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: context.localizations.firstName,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _lastNameTEController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: context.localizations.lastName,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneTEController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: context.localizations.phone,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordTEController,
                decoration: InputDecoration(
                  hintText: context.localizations.password,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _deliveryAddressTEController,
                textInputAction: TextInputAction.next,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: context.localizations.deliveryAddress,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: _onTapSignInButton,
                child: Text(context.localizations.signUP),
              ),
              const SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.themeColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = _onTapSignInButton,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }

  void _onTapSignUpButton() {
    Navigator.pushNamed(context, VerifyOtpScreen.name);
  }

  void _onTapSignInButton() {
    Navigator.pushNamed(context, '/sign-in');
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _phoneTEController.dispose();
    _passwordTEController.dispose();
    _deliveryAddressTEController.dispose();
    super.dispose();
  }
}
