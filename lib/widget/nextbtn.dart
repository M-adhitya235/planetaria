import 'package:flutter/material.dart';
import '../constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(  
      color: netral,
      borderRadius: BorderRadius.circular(10.0),
      ),
     padding: const EdgeInsets.symmetric(vertical: 13.0),
     child: const Text(
      'Pertanyaan Selanjutnya',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
      )
     )
    );
  }
}