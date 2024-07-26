import 'package:flutter/material.dart';
import 'package:pragma_test/app/splash/splash_page.dart';
import 'package:pragma_test/app/theme/app_theme.dart';

class PragmaTestApp extends StatelessWidget {
  const PragmaTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pragma Cats Breed',
      theme: AppTheme.of(context),
      home: const SplashPage(),
    );
  }
}
