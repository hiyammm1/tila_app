// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OnboardingScreen(),
//     );
//   }
// }

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _controller = PageController();
//   int _currentIndex = 0;

//   final List<Map<String, String>> _pages = [
//     {
//       "image": "assets/splash_logo.png",
//       "title": "Safe TILA",
//       "subtitle": "",
//     },
//     {
//       "image": "assets/women_group.png",
//       "title": "Welcome to the TILA’s Safe App",
//       "subtitle": "An app that will enhance your security and safety in various situations",
//     },
//     {
//       "image": "assets/woman_side.png",
//       "title": "We are ready to help you anytime, anywhere",
//       "subtitle": "Your safety and security are our priority",
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView.builder(
//             controller: _controller,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             itemCount: _pages.length,
//             itemBuilder: (context, index) {
//               return Stack(
//                 children: [
//                   Positioned.fill(
//                     child: Image.asset(
//                       _pages[index]["image"]!,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned.fill(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [
//                             Colors.transparent,
//                             Colors.purple.withOpacity(0.8)
//                           ],
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       if (_pages[index]["title"]!.isNotEmpty)
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//                           child: Text(
//                             _pages[index]["title"]!,
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       if (_pages[index]["subtitle"]!.isNotEmpty)
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                           child: Text(
//                             _pages[index]["subtitle"]!,
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               fontSize: 16,
//                               color: Colors.white70,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ],
//               );
//             },
//           ),
//           Positioned(
//             bottom: 30,
//             left: 20,
//             child: TextButton(
//               onPressed: () {},
//               child: const Text(
//                 "Skip",
//                 style: TextStyle(color: Colors.white70, fontSize: 16),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 30,
//             right: 20,
//             child: FloatingActionButton(
//               backgroundColor: Colors.white,
//               onPressed: () {
//                 if (_currentIndex < _pages.length - 1) {
//                   _controller.nextPage(
//                       duration: const Duration(milliseconds: 300), curve: Curves.ease);
//                 }
//               },
//               child: const Icon(Icons.arrow_forward, color: Colors.purple),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
