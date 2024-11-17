import 'package:flutter/material.dart';
import '/constants.dart';

class FunFactJupiter extends StatelessWidget {
  const FunFactJupiter({super.key});
 
  final List<String> funFacts = const [
     'Jupiter adalah objek keempat terterang di tata surya setelah Matahari, Bulan, dan Venus.',
     'Bangsa Babilonia kuno adalah yang pertama mencatat pengamatan mereka terhadap Jupiter sekitar abad ke-7 atau ke-8 SM',
     'Jupiter memiliki hari terpendek di antara semua planet, dengan waktu rotasi sekitar 9 jam dan 55 menit.',
     'Jupiter mengorbit Matahari setiap 11,8 tahun Bumi.',
     'Great Red Spot adalah badai raksasa yang telah berlangsung selama setidaknya 350 tahun.',
     'Interior Jupiter terdiri dari batu, logam, dan senyawa hidrogen.',
     'Ganymede, salah satu bulan Jupiter, adalah bulan terbesar di tata surya',
     'Jupiter memiliki sistem cincin tipis yang sebagian besar terdiri dari partikel debu yang terlempar dari bulan-bulannya selama benturan dari komet dan asteroid.',
     'Delapan pesawat luar angkasa telah mengunjungi Jupiter, termasuk Pioneer 10 dan 11, Voyager 1 dan 2, Galileo, Cassini, Ulysses, dan New Horizons',
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
                      'FAKTA - FAKTA\nPLANET JUPITER',
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
                          color: jupitercolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            fact,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontFamily: 'Ruluko',
                              color: Color.fromARGB(255, 228, 226, 211),
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
