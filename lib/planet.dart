import 'package:flutter/material.dart';
import 'planet/mercury.dart';
import 'planet/venus.dart';
import 'planet/earth.dart';
import 'planet/mars.dart';
import 'planet/jupiter.dart';
import 'planet/saturn.dart';
import 'planet/uranus.dart';
import 'planet/neptune.dart';
import 'constants.dart';

class Planet extends StatelessWidget {
  const Planet({super.key});

  final List<Map<String, dynamic>> planets = const [
    {'title': 'MERKURIUS', 'page': MercuryPage(), 'icon': 'assets/icons/mercury.png'},
    {'title': 'VENUS', 'page': VenusPage(), 'icon': 'assets/icons/venus.png'},
    {'title': 'BUMI', 'page': EarthPage(), 'icon': 'assets/icons/earth.png'},
    {'title': 'MARS', 'page': MarsPage(), 'icon': 'assets/icons/mars.png'},
    {'title': 'JUPITER', 'page': JupiterPage(), 'icon': 'assets/icons/jupiter.png'},
    {'title': 'SATURNUS', 'page': SaturnPage(), 'icon': 'assets/icons/saturn.png'},
    {'title': 'URANUS', 'page': UranusPage(), 'icon': 'assets/icons/uranus.png'},
    {'title': 'NEPTUNUS', 'page': NeptunePage(), 'icon': 'assets/icons/neptune.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: bgcolor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              itemCount: planets.length,
              itemBuilder: (context, index) {
                return _buildPlanetCard(
                  context,
                  planets[index]['title'],
                  planets[index]['page'],
                  planets[index]['icon'], 
                );
              },
            ),
          ),
          Positioned(
            top: 25,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanetCard(BuildContext context, String title, Widget page, String iconPath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: bgcolor, 
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            
            Positioned.fill(
              child: Opacity(
                opacity: 1, 
                child: Image.asset(
                  iconPath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Ruluko',
                  fontSize: 23,
                  color: Colors.white,
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
