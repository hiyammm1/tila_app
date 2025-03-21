import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the login page here
import 'register_page.dart'; // Import the register page here

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget { // Ensure it extends StatelessWidget or StatefulWidget
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Login Page")),
    );
  }
}

      body: Stack(
        children: [
          // Background Image (Stretch Horizontally)
          Positioned.fill(
            child: Image.asset(
              "assets/images/loginreg.jpg",// Ensure this path exists
              fit: BoxFit.fill, // Stretch horizontally to fit width
              alignment: Alignment.center, // Center align the image
            ),
          ),

          // Content Section at Bottom Left
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, bottom: 70), // Move content up a little
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
                children: [
                  // Title - "Tilas Safe" with new font style
                  const Text(
                    "Tilas Safe",
                    style: TextStyle(
                      fontSize: 26, // Larger font size
                      fontWeight: FontWeight.w700, // Font weight change
                      fontFamily: 'Arial', // Change font family (use a font available in your project)
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10), // Space between title and description

                  // Description
                  const Text(
                    "Providing solutions and assistance in situations\n"
                    "that may threaten or make you feel unsafe,\n"
                    "especially when walking alone in isolated places\n"
                    "or at night. We are here for you!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 20), // Adjusted SizedBox without const

                  // Login Button (Stretched Left and Right)
                  SizedBox(
                    width: double.infinity, // Make button stretch across
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to login page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(0, 50), // Adjusted height for button
                      ),
                      child: const Text("Login", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(height: 12), // Adjusted SizedBox without const

                  // Register Button (Outlined, Stretched Left and Right)
                  SizedBox(
                    width: double.infinity, // Make button stretch across
                    child: OutlinedButton(
                      onPressed: () {
                        // Navigate to register screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purple,
                        side: const BorderSide(color: Colors.purple),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(0, 50), // Adjusted height for button
                      ),
                      child: const Text("Register", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage {
  const LoginPage();
}
