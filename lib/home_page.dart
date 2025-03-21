import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Banner Section
            Stack(
              children: [
                // Background Image
                SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image.asset(
                    "assets/images/home_banner.jpg", // Ensure this image exists
                    fit: BoxFit.cover,
                  ),
                ),
                // Overlay Text
                Positioned(
                  top: 130,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello Dibora, feeling unsafe?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Choose a menu below",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Main Menu Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMainMenuCard(
                    title: "Emergency call",
                    image: "assets/images/emergency_call.jpg",
                    onTap: () {
                      // Add Emergency Call action
                    },
                  ),
                  _buildMainMenuCard(
                    title: "Record incident",
                    image: "assets/images/record_incident.jpg",
                    onTap: () {
                      // Add Record Incident action
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Other Features Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Other features",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            // Features Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  _buildFeatureButton("Contact", Icons.phone, Colors.blue),
                  _buildFeatureButton("Current location", Icons.location_on, Colors.black),
                  _buildFeatureButton("Safest route", Icons.directions, Colors.purple),
                  _buildFeatureButton("Know the condition", Icons.lightbulb, Colors.green),
                  _buildFeatureButton("Forum", Icons.forum, Colors.teal),
                  _buildFeatureButton("Account", Icons.person, Colors.grey),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Logout Button
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  // Handle Logout
                },
                backgroundColor: Colors.purple,
                child: const Icon(Icons.logout, color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Widget for Main Menu Cards
  Widget _buildMainMenuCard({required String title, required String image, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black.withOpacity(0.3),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget for Feature Buttons
  Widget _buildFeatureButton(String title, IconData icon, Color color) {
    return ElevatedButton(
      onPressed: () {
        // Add action for each feature
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(height: 5),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
