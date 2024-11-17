import 'package:flutter/material.dart';
import 'funfact/merkurius.dart';
import 'funfact/venus.dart';
import 'funfact/bumi.dart';
import 'funfact/mars.dart';
import 'funfact/jupiter.dart';
import 'funfact/saturnus.dart';
import 'funfact/uranus.dart';
import 'funfact/neptunus.dart';
import 'constants.dart';

class FunFactPlanet extends StatelessWidget {
  const FunFactPlanet({super.key});

  final List<Map<String, dynamic>> planets = const [
    {'title': 'MERKURIUS', 'page': FunFactMerkurius(), 'color': mercurycolor},
    {'title': 'VENUS', 'page': FunFactVenus(), 'color': venuscolor},
    {'title': 'BUMI', 'page': FunFactBumi(), 'color': earthcolor},
    {'title': 'MARS', 'page': FunFactMars(), 'color': marscolor},
    {'title': 'JUPITER', 'page': FunFactJupiter(), 'color': jupitercolor},
    {'title': 'SATURNUS', 'page': FunFactSaturnus(), 'color': saturncolor},
    {'title': 'URANUS', 'page': FunFactUranus(), 'color': uranuscolor},
    {'title': 'NEPTUNUS', 'page': FunFactNeptunus(), 'color': neptunecolor},
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
                  planets[index]['page'],
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

  Widget _buildPlanetCard(BuildContext context, String title, Widget page, Color backgroundColor) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
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
