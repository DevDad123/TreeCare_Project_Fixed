import 'package:flutter/material.dart';

class Diseasescreen extends StatelessWidget {
  const Diseasescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          DiseaseCard(image: "assets/crop.jpg", name: "Rice"),
          DiseaseCard(image: "assets/rose.jpg", name: "Rose"),
          DiseaseCard(image: "assets/orchid.jpg", name: "Orchid"),
          DiseaseCard(image: "assets/plumeria.jpg", name: "Plumeria"),
          DiseaseCard(image: "assets/hoagiay.jpg", name: "Bougainvillea"),
        ],
      ),
    );
  }
}

class DiseaseCard extends StatelessWidget {
  final String image;
  final String name;

  const DiseaseCard({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            ClipOval(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 90,
                height: 90,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            IconButton(
              iconSize: 30,
              onPressed: () {
                print("$name infopage");
              },
              icon: const Icon(Icons.arrow_circle_right_outlined),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
