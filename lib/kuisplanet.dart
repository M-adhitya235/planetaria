import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:planetaria/models/modelquest.dart';
import 'constants.dart';
import 'widget/widgetquest.dart';
import 'widget/nextbtn.dart';
import 'widget/optcard.dart';
import 'widget/result.dart';
import 'models/apkuis.dart';

class KuisPlanet extends StatefulWidget {
  const KuisPlanet({super.key});

  @override
  _KuisPlanetState createState() => _KuisPlanetState();
}

class _KuisPlanetState extends State<KuisPlanet> {
  var apkuis = KuisApi();

  late Future<List<Kuis>> _kuis;

  Future<List<Kuis>> getKuiz() async {
    List<Kuis> allQuestions = await apkuis.fetchQuest(); 
    allQuestions.shuffle(); 
    return allQuestions.sublist(0, 5); 
  }

  @override
  void initState() {
    _kuis = getKuiz(); 
    super.initState();
  }

  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadyselected = false;

  void nextQuest(int kuisLength) {
    if (index == kuisLength - 1) {
      showDialog(
        context: context, 
        barrierDismissible: false,
        builder: (ctx) => ResultBox(
          result: score,
          questlength: kuisLength,
          onPressedRestart: startOver,
          onPressedBack: () {  
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(title: 'Planetaria Homepage'), 
              ),
              (route) => false, 
            );
          }
        )
      );
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
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadyselected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _kuis,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Kuis>;
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
                child: Column(
                  children: [
                    WidgetQuest(
                      indexAction: index,
                      quest: extractedData[index].title,
                      totalQuest: extractedData.length,
                    ),
                    const Divider(color: netral),
                    const SizedBox(height: 25.0),
                    for (int i = 0; i < extractedData[index].options.length; i++)
                      GestureDetector(
                        onTap: () => checkAnswerandUpdate(
                            extractedData[index].options.values.toList()[i]),
                        child: OptionCard(
                          option: extractedData[index].options.keys.toList()[i],
                          color: isPressed
                              ? extractedData[index].options.values.toList()[i] == true
                                  ? correct
                                  : incorrect
                              : netral,
                        ),
                      ),
                  ],
                ),
              ),
              floatingActionButton: GestureDetector(
                onTap: () => nextQuest(extractedData.length),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: NextButton(),
                ),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const Center(
          child: Text('No Data'),
        );
      },
    );
  }
}
