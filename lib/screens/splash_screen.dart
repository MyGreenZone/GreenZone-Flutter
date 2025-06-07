import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth / 1.5;

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo_app.png',
          width: imageWidth,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
