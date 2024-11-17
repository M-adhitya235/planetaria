import 'package:flutter/material.dart';
import '/constants.dart';

class FunFactMars extends StatelessWidget {
  const FunFactMars({super.key});

  final List<String> funFacts = const [
    'Mars memiliki sekitar 15% dari volume Bumi dan lebih dari 10% dari massanya, tetapi dua pertiga permukaan Bumi tertutup air.',
    'Mars adalah rumah bagi Olympus Mons, gunung tertinggi di tata surya dengan ketinggian 21 km dan diameter 600 km.'
    'Dari 40 misi ke Mars (hingga September 2014), hanya 18 misi yang berhasil. Misi terbaru termasuk Curiosity, MAVEN, dan Mangalyaan dari ISRO.',
    'Mars mengalami badai debu yang dapat berlangsung berbulan-bulan dan menutupi seluruh planet.',
    'Matahari tampak sekitar setengah ukuran seperti yang terlihat dari Bumi.',
    'Mars memiliki dua bulan kecil, Phobos dan Deimos, yang ditemukan pada tahun 1877.',
    'Meteorite yang berasal dari Mars telah ditemukan di Bumi, memungkinkan ilmuwan untuk mempelajari atmosfer Mars sebelum misi luar angkasa.',
    'Mars dinamai menurut dewa perang Romawi. Warna merahnya disebabkan oleh batuan dan debu yang kaya akan besi.',
    'Ada tanda-tanda air cair di Mars dalam bentuk garis gelap di dinding kawah, menunjukkan adanya air asin yang mengalir.',
    'Dalam 20-40 juta tahun ke depan, bulan terbesar Mars, Phobos, diperkirakan akan hancur dan membentuk cincin yang bisa bertahan hingga 100 juta tahun.',
    'Saat senja di Mars, langit tampak biru, berbeda dengan langit merah muda-merah yang terlihat di siang hari'
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
                      'FAKTA - FAKTA\nPLANET MARS',
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
                          color: marscolor,
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
