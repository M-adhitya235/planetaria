import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '/constants.dart';

class FunFactPage extends StatefulWidget {
  final String planetName;
  final Color planetColor;

  const FunFactPage({super.key, required this.planetName, required this.planetColor});

  @override
  State<FunFactPage> createState() => _FunFactPageState();
}

class _FunFactPageState extends State<FunFactPage> {
  late Future<List<String>> funFacts;

  
  Future<List<String>> fetchFunFacts(String planetName) async {
    final url = Uri.parse(
        'https://planetaria-fbdbf-default-rtdb.asia-southeast1.firebasedatabase.app/funfact/-OCJHobgMTYOAUkKzwLC/$planetName.json');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List<dynamic>;
      return data.map((fact) => fact.toString()).toList(); 
    } else {
      throw Exception('Failed to load fun facts');
    }
  }

  @override
  void initState() {
    super.initState();
    funFacts = fetchFunFacts(widget.planetName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<String>>(
        future: funFacts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'No fun facts available',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            );
          }

          final facts = snapshot.data!;

          return PageView.builder(
            itemCount: facts.length,
            itemBuilder: (context, index) {
              final fact = facts[index];

              return Stack(
                children: [
                  Container(
                    color: bgcolor,
                  ),
                  Positioned(
                    top: 25,
                    left: 8,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back,
                          color: Colors.white, size: 30),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 15),
                        Text(
                          'FAKTA - FAKTA\nPLANET ${widget.planetName.toUpperCase()}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Ruluko',
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: widget.planetColor, // Warna bisa diatur per planet
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                fact,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Ruluko',
                                  color: Color.fromARGB(255, 255, 255, 255)                             
                                  ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
