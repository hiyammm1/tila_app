import 'package:flutter/material.dart';
import 'onboarding_screen.dart'; // Import the onboarding screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to OnboardingScreen after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA82AE3), // Purple background
      body: Center(
        child: Image.asset(
          "assets/images/pta.png", // Ensure this logo exists in your assets
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
