import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/core/extensions/localization_extension.dart';
import 'package:ecommerce/features/auth/ui/widgets/app_logo.dart';
import 'package:ecommerce/l10n/app_localizations.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String name = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const AppLogo(),
            const SizedBox(height: 24),
            Text(
              context.localizations.welcomeBack, 
              style: textTheme.titleLarge
              ),
            const SizedBox(height: 8),
            Text(
              context.localizations.enterYourEmailAndPassword,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(hintText: context.localizations.email),
              ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(hintText: context.localizations.password),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              
              onPressed: () {
                FirebaseCrashlytics.instance.log('Sign In button pressed');
                throw Exception("My custom error");
              }, 
              child:  Text(context.localizations.signIn),
              ),
          ],
        ),
      ),
      ),
    );
  }
}
