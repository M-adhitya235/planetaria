import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:planetaria/firebase_options.dart';
import 'homepage.dart';
import 'constants.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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