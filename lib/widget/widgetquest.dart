import 'package:flutter/material.dart';
import '../constants.dart';

class WidgetQuest extends StatelessWidget {
  const WidgetQuest({super.key, 
  required this.quest, 
  required this.indexAction, 
  required this.totalQuest});


  final String quest;
  final int indexAction;
  final int totalQuest;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Kuis ${indexAction + 1}/$totalQuest: $quest',
         style: const TextStyle(
          fontSize: 23.0,
          color: netral,
        )
      
        ),
    );
  }
}