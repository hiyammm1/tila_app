import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true; // Toggle password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Image
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login2.jpg'), // Replace with your image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 15,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
                    onPressed: () {
                      Navigator.pop(context); // Go back
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Login Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "login",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Email Field
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.purple),
                  labelText: "E-mail",
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 15),

            // Password Field
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key, color: Colors.purple),
                  labelText: "Password",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),

            // Forgot Password
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Implement Forgot Password
                  },
                  child: Text(
                    "forget password?",
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Login Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Google Login Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: OutlinedButton(
                onPressed: () {
                  // TODO: Implement Google Login
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.purple),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google_logo.png', width: 24), // Google Icon
                    SizedBox(width: 10),
                    Text(
                      "login with google",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
