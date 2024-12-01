import 'package:flutter/material.dart';
import 'constants.dart';
import 'funfact/funfact_planet.dart';

class FunFactPlanet extends StatelessWidget {
  const FunFactPlanet({super.key});

  final List<Map<String, dynamic>> planets = const [
    {'title': 'MERKURIUS', 'color': mercurycolor},
    {'title': 'VENUS', 'color': venuscolor},
    {'title': 'BUMI', 'color': earthcolor},
    {'title': 'MARS', 'color': marscolor},
    {'title': 'JUPITER', 'color': jupitercolor},
    {'title': 'SATURNUS', 'color': saturncolor},
    {'title': 'URANUS', 'color': uranuscolor},
    {'title': 'NEPTUNUS', 'color': neptunecolor},
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
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
            child: ListView.builder(
              itemCount: planets.length,
              itemBuilder: (context, index) {
                return _buildPlanetCard(
                  context,
                  planets[index]['title'],
                  planets[index]['color'],
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

  Widget _buildPlanetCard(BuildContext context, String title, Color backgroundColor) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FunFactPage(planetName: title.toLowerCase(), planetColor: backgroundColor,),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Container(
          height: 60,
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Center(
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
        ),
      ),
    );
  }
}
