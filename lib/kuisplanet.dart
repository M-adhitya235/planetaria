import 'package:flutter/material.dart';
import 'constants.dart';
import 'models/modelquest.dart';
import 'widget/widgetquest.dart';
import 'widget/nextbtn.dart';
import 'widget/optcard.dart';
import 'widget/result.dart';
import 'homepage.dart';

class KuisPlanet extends StatefulWidget {
  const KuisPlanet({super.key});

  @override
  State<KuisPlanet> createState() => _KuisPlanetState();
}

class _KuisPlanetState extends State<KuisPlanet> {
  final List<Kuis> _allQuestions = [
    Kuis(
        id: '1',
        title: 'Planet yang sudah tidak dianggap lagi di tata surya ?',
        options: {
          'Venus': false,
          'Merkurius': false,
          'Bumi': false,
          'Pluto': true
        }),
    Kuis(
        id: '2',
        title: 'Planet yang diketahui memiliki kehidupan didalamnya ?',
        options: {
          'Venus': false,
          'Merkurius': false,
          'Bumi': true,
          'Jupiter': false
        }),
    Kuis(id: '3', title: 'Planet terpanas ?', options: {
      'Venus': true,
      'Merkurius': false,
      'Saturnus': false,
      'Jupiter': false
    }),
    Kuis(
        id: '4',
        title: 'Planet yang disebut planet merah ?',
        options: {
          'Venus': false,
          'Mars': true,
          'Mercury': false,
          'Jupiter': false
        }),
    Kuis(
        id: '5',
        title: 'Planet yang tidak memiliki bulan ?',
        options: {
          'Venus': true,
          'Saturnus': false,
          'Bumi': false,
          'Jupiter': false
        }),
    Kuis(
        id: '6',
        title: 'Planet dengan cincin paling mencolok ?',
        options: {
          'Neptunus': false,
          'Saturnus': true,
          'Uranus': false,
          'Jupiter': false
        }),
    Kuis(
        id: '7',
        title: 'Planet yang dikenal dengan nama "planet biru" ?',
        options: {
          'Bumi': true,
          'Mars': false,
          'Venus': false,
          'Neptunus': false
        }),
    Kuis(
        id: '8',
        title: 'Apa 2 nama bulan yang dimiliki planet Mars ?',
        options: {
          'Encaladus & Titan': false,
          'Ganymede & Callisto': false,
          'Phobos & Deimos': true,
          'Larissa & Proteus': false
        }),
    Kuis(
        id: '9',
        title: 'Planet terdekat dengan matahari ?',
        options: {
          'Merkurius': true,
          'Venus': false,
          'Mars': false,
          'Bumi': false
        }),
    Kuis(
        id: '10',
        title: 'Planet yang terbesar di tata surya ?',
        options: {
          'Saturnus': false,
          'Jupiter': true,
          'Bumi': false,
          'Mars': false
        }),
  ];

  late List<Kuis> _question;
  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadyselected = false;

  @override
  void initState() {
    super.initState();
    _question = _getRandomQuestions();
  }

  List<Kuis> _getRandomQuestions() {
    _allQuestions.shuffle();
    return _allQuestions.sublist(0, 5);
  }

  void nextQuest() {
    if (index == _question.length - 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => ResultBox(
              result: score,
              questlength: _question.length,
              onPressedRestart: startOver,
              onPressedBack: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const HomePage(title: 'Planetaria Homepage'),
                  ),
                  (route) => false,
                );
              }));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadyselected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Mohon untuk menjawab pertanyaannya'),
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
      _question = _getRandomQuestions();
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
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: const Text('Kuis Planet'),
        backgroundColor: bgcolor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Score : $score',
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(children: [
            WidgetQuest(
              indexAction: index,
              quest: _question[index].title,
              totalQuest: _question.length,
            ),
            const Divider(color: netral),
            const SizedBox(height: 25.0),
            for (int i = 0; i < _question[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerandUpdate(
                    _question[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _question[index].options.keys.toList()[i],
                  color: isPressed
                      ? _question[index].options.values.toList()[i] == true
                          ? correct
                          : incorrect
                      : netral,
                ),
              ),
          ])),
      floatingActionButton: GestureDetector(
        onTap: () => nextQuest(),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: NextButton(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
