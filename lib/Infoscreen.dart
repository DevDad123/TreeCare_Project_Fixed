import 'package:a/LogIn.dart';
import 'package:flutter/material.dart';

class Infoscreen extends StatefulWidget {
  const Infoscreen({super.key});

  @override
  State<Infoscreen> createState() => _InfoscreenState();
}

class _InfoscreenState extends State<Infoscreen> {
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
                    children: [
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

          SizedBox(height: 20),

          // First Button - Personal Information
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.people, size: 25),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Personal Information",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: Icon(Icons.arrow_circle_right_outlined),
                      onPressed: () {
                        print("Personal Information clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Second Button - Languages
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.language, size: 25),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Languages",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: Icon(Icons.arrow_circle_right_outlined),
                      onPressed: () {
                        print("Languages clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Third Button - Themes
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.colorize, size: 25),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Themes",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: Icon(Icons.arrow_circle_right_outlined),
                      onPressed: () {
                        print("Themes clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Fourth Button - Help & Support
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.help, size: 25),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Help & Support",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      icon: Icon(Icons.arrow_circle_right_outlined),
                      onPressed: () {
                        print("Help & Support clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.red,
                minimumSize: Size(200, 50),
                shadowColor: Colors.black,
                elevation: 10,
              ),
              child: Text("LOG OUT",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
