import 'package:flutter/material.dart';
import 'constants.dart';
import 'models/modelquest.dart';
import 'widget/widgetquest.dart';
import 'widget/nextbtn.dart';
import 'widget/optcard.dart';
import 'widget/result.dart';

class KuisPlanet extends StatefulWidget {
  const KuisPlanet({super.key});

  @override
  _KuisPlanetState createState() => _KuisPlanetState();
}

class _KuisPlanetState extends State<KuisPlanet> {
  final List<Kuis> _kuis = [
    Kuis(
      id: '1',
      title: 'Planet terbesar?',
      options: {'Jupiter': true, 'Saturnus': false, 'Venus': false, 'Mars': false},
    ),
    Kuis(
      id: '2',
      title: 'Planet terpanas?',
      options: {'Mars': false, 'Bumi': false, 'Venus': true, 'Merkurius': false},
    ),
  ];

  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadyselected = false;

  void nextQuest() {
    if (index == _kuis.length - 1) {
      showDialog(context: context, 
      barrierDismissible: false,
      builder: (ctx) => ResultBox(
        result: score,
        questlength: _kuis.length,
        onPressed: startOver,
      ));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadyselected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Mohon untuk menjawab pertanyaanya'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  void checkAnswerandUpdate(bool value) {
    if (isAlreadyselected) {
      return;
    } else {
      setState(() {
        isPressed = true;
        isAlreadyselected = true;
        if (value == true) {
          score++;
        }
      });
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadyselected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('Kuis Planet'),
        backgroundColor: background,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Score : $score',
              style: const TextStyle(fontSize: 10.0),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            WidgetQuest(
              indexAction: index,
              quest: _kuis[index].title,
              totalQuest: _kuis.length,
            ),
            const Divider(color: netral),
            const SizedBox(height: 25.0),
            for (int i = 0; i < _kuis[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerandUpdate(
                    _kuis[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _kuis[index].options.keys.toList()[i],
                  color: isPressed
                      ? _kuis[index].options.values.toList()[i] == true
                          ? correct
                          : incorrect
                      : netral,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextQuest: nextQuest,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
