import 'package:flutter/material.dart';
import '../constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({super.key, required this.result, required this.questlength, required this.onPressed});

  final int result;
  final int questlength;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(padding: const EdgeInsets.all(70.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hasil',
            style: TextStyle(color: netral, fontSize: 22.0),
          ),
          const SizedBox(height: 20.0),
          CircleAvatar(
            radius: 70.0,
              backgroundColor: result == questlength / 2
                 ? Colors.yellow
                 :  result < questlength / 2
                      ? incorrect
                      : correct,
            child: Text(
              '$result/$questlength',
              style: const TextStyle(fontSize: 30.0),
              ),
          ),
          const SizedBox(height: 20.0),
          Text(
            result == questlength / 2
                 ? 'Hampir '
                 :  result < questlength / 2
                      ? 'Coba Lagi !'
                      : 'Mantap',
            style: const TextStyle(color: netral),
          ),
          const SizedBox(height: 25.0),
          GestureDetector(
            onTap: onPressed,
            child: const Text(
              'Mulai Lagi',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                letterSpacing: 1.0,
              ),
            ),
          )
        ],
      )),
    );
  }
}