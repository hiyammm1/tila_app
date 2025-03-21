import 'package:flutter/material.dart';
import 'login_register.dart';  // Import the LoginRegisterScreen

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
      "image": "assets/images/pta.png",
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
    },
    {
      "image": "assets/images/wonder_women.jpg",
      "title": "Sharing your location with someone you trust is a smart way to enhance your safety when walking alone!",
      "subtitle": "We respect your privacy, and your location will only be shared with your consent",
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
                        ? Container(color: const Color(0xFFA82AE3)) // Background for first page
                        : Image.asset(_pages[index]["image"]!, fit: BoxFit.cover),
                  ),
                  // Gradient overlay for other screens
                  if (index != 0)
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple.withOpacity(0.2), // Start with no effect at the top
                              Colors.purple.withOpacity(0.6), // Gradually get purple in the middle
                              const Color(0xFFA82AE3).withOpacity(0.99), // Even darker purple in the lower middle
                              const Color(0xFFA82AE3), // Full dark purple at the bottom
                            ],
                            stops: const [0.0, 0.4, 0.7, 1.0], // Controls transition points (stepping into darker colors)
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
                    Positioned(
                      bottom: 150, // Move text closer to the bottom by adjusting this value
                      left: 20,
                      right: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (_pages[index]["title"]!.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                              child: Text(
                                _pages[index]["title"]!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: index == 3 ? 16 : 24,
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
                          // Dot indicator row
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(_pages.length - 1, (dotIndex) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 12.0,
                                    color: _currentIndex == dotIndex + 1
                                        ? Colors.white // Highlight the current page dot
                                        : Colors.white70, // Inactive dots
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
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
                } else {
                  // Navigate to the login/register screen when on the last page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginRegisterScreen()),
                  );
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
