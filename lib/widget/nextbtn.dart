import 'package:flutter/material.dart';
import '../constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.nextQuest});

  final VoidCallback nextQuest;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuest,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(  
        color: netral,
        borderRadius: BorderRadius.circular(10.0),
        ),
       padding: const EdgeInsets.symmetric(vertical: 10.0),
       child: const Text(
        'Pertanyaan Selanjutnya',
        textAlign: TextAlign.center,
       )
      ),
    );
  }
}