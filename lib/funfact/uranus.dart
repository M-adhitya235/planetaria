import 'package:flutter/material.dart';
import '/constants.dart';

class FunFactUranus extends StatelessWidget {
  const FunFactUranus ({super.key});

  final List<String> funFacts = const [
     'Uranus secara resmi ditemukan oleh Sir William Herschel pada tahun 1781.',
     'Nama Uranus diusulkan oleh astronom Johann Bode, yang berasal dari dewa Yunani kuno Ouranos.',
     'Uranus mengorbit Matahari setiap 84 tahun Bumi.',
     'Salah satu kutub Uranus menghadap langsung ke Matahari, menerima sekitar 42 tahun sinar matahari langsung.',
     'Uranus sering disebut sebagai planet "ice giant".',
     'Uranus memiliki suhu terendah di antara semua planet, dengan suhu minimum atmosfer sekitar -224°C.',
     'Uranus memiliki dua set cincin sangat tipis yang berwarna gelap.',
     'Bulan-bulan Uranus dinamai berdasarkan karakter-karakter yang diciptakan oleh William Shakespeare dan Alexander Pope, termasuk Oberon, Titania, dan Miranda.',
     'Bulan Uranus yang paling menarik adalah Miranda, yang memiliki ngarai es, teras, dan area permukaan aneh lainnya.',
     'Hanya satu pesawat luar angkasa yang telah melintasi Uranus. Voyager 2 terbang melewati planet ini pada tahun 1986.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: funFacts.length,
        itemBuilder: (context, index) {
          final fact = funFacts[index];

          return Stack(
            children: [
              Container(
                color: bgcolor, 
              ),
              Positioned(
                top: 25,
                left: 8,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      'FAKTA - FAKTA\nPLANET URANUS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Ruluko',
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: uranuscolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            fact,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontFamily: 'Ruluko',
                              color: Color.fromARGB(255, 58, 40, 19),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
