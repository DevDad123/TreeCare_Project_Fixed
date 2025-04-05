import 'package:flutter/material.dart';

class Diseasescreen extends StatelessWidget {
  const Diseasescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/crop.jpg",
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 65),
                    child: Text(
                      "Rice",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () {
                        print("rose infopage");
                      },
                      icon: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/rose.jpg",
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 63),
                    child: Text(
                      "Rose",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 114),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () {
                        print("rose infopage");
                      },
                      icon: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/orchid.jpg",
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 62),
                    child: Text(
                      "Orchid",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 97),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () {
                        print("rose infopage");
                      },
                      icon: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Fourth container
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/plumeria.jpg",
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 62),
                    child: Text(
                      "Plumeria",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 73),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () {
                        print("rose infopage");
                      },
                      icon: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Duplicate of the fourth container
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/hoagiay.jpg",
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      "Bougainvillea",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () {
                        print("rose infopage");
                      },
                      icon: const Icon(Icons.arrow_circle_right_outlined),
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
