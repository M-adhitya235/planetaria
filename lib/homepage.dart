import 'package:flutter/material.dart';
import 'kuisplanet.dart'; 

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
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
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), 
                backgroundColor: const Color.fromARGB(255, 59, 48, 156), 
                foregroundColor: const Color.fromARGB(255, 226, 221, 221),
              ),
              child: const Text('Kuis Planet'),
            ),
          ],
        ),
      ),
    );
  }
}
