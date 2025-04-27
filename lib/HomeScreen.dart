import 'package:a/Login.dart';
import 'package:a/consts.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Chatbot.dart';
import 'Diseasescreen.dart';
import 'Infoscreen.dart';
import 'Scanscreen.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Widget> _screens = [
    const HomeContent(),
    const Diseasescreen(),
    const Scanscreen(),
    const Chatbot(),
    const Infoscreen(),
  ];

  int _selectedIndex = 0;

  void _signOut(BuildContext context) async {
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _signOut(context),
          icon: const Icon(Icons.exit_to_app),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "TREECARE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        animationDuration: const Duration(milliseconds: 350),
        index: _selectedIndex,
        items: const [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.medical_information, color: Colors.black),
          Icon(Icons.flip_camera_ios, color: Colors.black),
          Icon(Icons.chat, color: Colors.black),
          Icon(Icons.info, color: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {"icon": Icons.home, "label": "Home"},
      {"icon": Icons.medical_information, "label": "Disease Info"},
      {"icon": Icons.qr_code_scanner, "label": "Scan"},
      {"icon": Icons.chat, "label": "ChatBot"},
      {"icon": Icons.info, "label": "Info"},
      {"icon": Icons.settings, "label": "Settings"},
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/avatar.jpg",
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "treecareprofile",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "treecareprofile@gmail.com",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green.shade100,
                          ),
                          child: IconButton(
                            onPressed: () {
                              if (menuItems[index]["label"] == "ChatBot") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Chatbot()),
                                );
                              }
                            },
                            icon: Icon(
                              menuItems[index]["icon"],
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          menuItems[index]["label"],
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          FlutterCarousel(
            options: FlutterCarouselOptions(
              height: 230,
              showIndicator: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              slideIndicator:  CircularSlideIndicator(),
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    width: 400,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Info $i',
                        style: const TextStyle(fontSize: 20.0),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
