import 'package:a/Login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Infoscreen extends StatefulWidget {
  const Infoscreen({super.key});

  @override
  State<Infoscreen> createState() => _InfoscreenState();
}

class _InfoscreenState extends State<Infoscreen> {
  void _signout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/avatar.jpg",
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "treecareprofile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        "treecareprofile@gmail.com",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Buttons
          buildMenuButton(
            icon: Icons.people,
            title: "Personal Information",
            onTap: () => print("Personal Information clicked"),
          ),
          buildMenuButton(
            icon: Icons.language,
            title: "Languages",
            onTap: () => print("Languages clicked"),
          ),
          buildMenuButton(
            icon: Icons.colorize,
            title: "Themes",
            onTap: () => print("Themes clicked"),
          ),
          buildMenuButton(
            icon: Icons.help,
            title: "Help & Support",
            onTap: () => print("Help & Support clicked"),
          ),

          const SizedBox(height: 40),

          // Log out button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => _signout(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.red,
                minimumSize: const Size(200, 50),
                shadowColor: Colors.black,
                elevation: 10,
              ),
              child: const Text(
                "LOG OUT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Small helper function to build each menu button
  Widget buildMenuButton({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Icon(icon, size: 30),
            const SizedBox(width: 15),
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_circle_right_outlined),
              iconSize: 30,
              onPressed: onTap,
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
