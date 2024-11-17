import 'package:flutter/material.dart';
import 'homepage.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planetaria',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: bgcolor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, 
      home: const HomePage(title: 'Planetaria Homepage'), 
    );
  }
}