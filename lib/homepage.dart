import 'package:flutter/material.dart';
import 'planet.dart';
import 'funfactplanet.dart';
import 'kuisplanet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9F94B7),
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgl.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center( 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Planet()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: const Color(0xFF9F94B7),
                      foregroundColor: const Color(0xFFE2DDDD),
                    ),
                    icon: const FaIcon(FontAwesomeIcons.globe), 
                    label: const Text('Planet'),
                  ),
                ),
                const SizedBox(height: 100), 
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FunFactPlanet()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: const Color(0xFF9F94B7),
                      foregroundColor: const Color(0xFFE2DDDD),
                    ),
                    icon: const FaIcon(FontAwesomeIcons.star), 
                    label: const Text('Fun Fact'),
                  ),
                ),
                const SizedBox(height: 100), 
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KuisPlanet()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      backgroundColor: const Color(0xFF9F94B7),
                      foregroundColor: const Color(0xFFE2DDDD),
                    ),
                    icon: const FaIcon(FontAwesomeIcons.circleQuestion), 
                    label: const Text('Kuis Planet'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}