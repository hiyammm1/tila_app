import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _pages = [
    {
      "image": "assets/images/logo.jpg",
      "title": "",
      "subtitle": "",
    },
    {
      "image": "assets/images/onboarding_image.jpg",
      "title": "Welcome to the TILA’s Safe App",
      "subtitle": "An app that will enhance your security and safety in various situations",
    },
    {
      "image": "assets/images/woman_side.jpg",
      "title": "We are ready to help you anytime, anywhere",
      "subtitle": "Your safety and security are our priority",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: _pages.length,
           itemBuilder: (context, index) {
  return Stack(
    children: [
      // Set solid purple background for first screen, else use image background
      Positioned.fill(
        child: index == 0
            ? Container(color: Color(0xFFA82AE3)) // Background for first page
            : Image.asset(_pages[index]["image"]!, fit: BoxFit.cover),
      ),
      // Gradient overlay for other screens
  if (index != 0)
  Positioned.fill(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent, // No effect at the top
            Colors.purple.withOpacity(0.3), // Slight purple blur in the middle
            Color(0xFFA82AE3).withOpacity(0.9), // Darker purple at the bottom
          ],
          stops: [0.4, 0.7, 1.0], // Controls transition points (closer to bottom)
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    ),
  ),


      // Centered logo on first screen
      if (index == 0)
        Center(
          child: Image.asset(
            _pages[index]["image"]!,
            width: 200,
            height: 200,
          ),
        ),
      // Title and subtitle for other screens
      if (index != 0)
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_pages[index]["title"]!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  _pages[index]["title"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            if (_pages[index]["subtitle"]!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  _pages[index]["subtitle"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
          ],
        ),
    ],
  );
},

          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {
                if (_currentIndex < _pages.length - 1) {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 300), curve: Curves.ease);
                }
              },
              child: const Icon(Icons.arrow_forward, color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
