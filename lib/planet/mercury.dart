import 'package:flutter/material.dart';
import '/constants.dart';

class MercuryPage extends StatefulWidget {
  const MercuryPage({super.key});

  @override
  _MercuryPageState createState() => _MercuryPageState();
}

class _MercuryPageState extends State<MercuryPage> {
  bool _showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/merkurius.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                children: [
                  const Text(
                    'PLANET\nMERKURIUS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Ruluko',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: mercurycolor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Merkurius, planet terdekat dengan Matahari, memiliki suhu permukaan yang ekstrem, dapat mencapai 800°F (430°C) pada siang hari dan turun hingga -290°F (-180°C) pada malam hari.\nMeskipun kedekatannya dengan Matahari, Merkurius bukanlah planet terpanas, gelar tersebut dipegang oleh Venus.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: 'Ruluko',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                          if (_showMoreDetails)
                            Column(
                              children: [
                                const Text(
                                  'Nama Merkurius diambil dari dewa Romawi tercepat, dan lingkungannya tidak mendukung kehidupan karena suhu dan radiasi matahari yang ekstrem. Dengan radius 1.516 mil (2.440 kilometer), Merkurius lebih kecil dari Bumi dan berjarak rata-rata 36 juta mil (58 juta kilometer) dari Matahari. Orbitnya berbentuk telur yang eksentrik, menyelesaikan satu putaran setiap 88 hari Bumi, sementara rotasinya lambat, dengan satu hari Merkurius setara dengan 176 hari Bumi.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Ruluko',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Merkurius tidak memiliki bulan atau cincin dan terbentuk sekitar 4,5 miliar tahun lalu dari gas dan debu yang saling menarik. Planet ini memiliki inti metalik besar dan cangkang luar yang tipis. Permukaan Merkurius mirip dengan Bulan, dipenuhi kawah akibat tumbukan, dan eksosfernya terdiri dari atom yang terlepas dari permukaan. Meski memiliki medan magnet yang lemah, Merkurius dapat menciptakan tornado magnetik akibat interaksinya dengan angin matahari.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Ruluko',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _showMoreDetails = !_showMoreDetails;
                                });
                              },
                              child: Text(
                                _showMoreDetails ? 'Hide Details' : 'Detail',
                                style: const TextStyle(
                                  fontFamily: 'Ruluko',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: mercurycolor, size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
