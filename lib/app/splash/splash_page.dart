import 'package:flutter/material.dart';
import 'package:pragma_test/app/landing/landing_page.dart';
import 'package:pragma_test/app/res/assets.dart';
import 'package:pragma_test/app/res/contants.dart';
import 'package:pragma_test/app/res/strings.dart';
import 'package:pragma_test/app/theme/app_spacing.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => _navigateToLanding());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppSizedBox.large,
          Text(
            AppStrings.appName,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          AppSizedBox.small,
          Image.asset(AppAssets.catLogo),
        ],
      ),
    );
  }

  void _navigateToLanding() {
    Future.delayed(const Duration(milliseconds: AppConstants.kSplashDuration), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (route) => const LandingPage()),
      );
    });
  }
}
