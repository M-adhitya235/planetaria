import 'package:flutter/material.dart';
import 'homepage.dart';
import 'models/db_connect.dart';

void main() {
  var db = DbConnect();
  // db.addQuest(Kuis(id: '10', title: 'What is Planet of Love ?', options: {
  //   'Mercury' : false,
  //   'Venus' : true,
  //   'Jupiter' : false,
  //   'Earth' : false
  // }));

  db.fetchQuest();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planetaria',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, 
      home: const HomePage(title: 'Planetaria Home Page'), 
    );
  }
}