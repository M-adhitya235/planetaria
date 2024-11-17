import 'package:flutter/material.dart';
import '../constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    super.key,
    required this.result,
    required this.questlength,
    required this.onPressedRestart,
    required this.onPressedBack,
  });

  final int result;
  final int questlength;
  final VoidCallback onPressedRestart;
  final VoidCallback onPressedBack;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  : result < questlength / 2
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
                  ? 'Hampir'
                  : result < questlength / 2
                      ? 'Coba Lagi!'
                      : 'Mantap!',
              style: const TextStyle(color: netral),
            ),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: onPressedBack,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 98, 55, 146),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Back to Menu',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: onPressedRestart,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 46, 143, 189),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Mulai Lagi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
