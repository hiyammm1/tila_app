// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'onboarding_screen.dart'; // Import Onboarding Screen

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Navigate to OnboardingScreen after 5 seconds
//     Timer(Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => OnboardingScreen()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 2, 1, 2), // Change to match A82AE3 your design
//       body: Center(
//         child: Image.asset(
//           'assets/splash_logo.png', // Replace with your logo
//           width: 200, // Adjust size
//         ),
//       ),
//     );
//   }
// }
