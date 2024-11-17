import 'package:flutter/material.dart';
import '/constants.dart';

class UranusPage extends StatefulWidget {
  const UranusPage({super.key});

  @override
  _UranusPageState createState() => _UranusPageState();
}

class _UranusPageState extends State<UranusPage> {
  bool _showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/uranus.jpg'),
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
                    'PLANET\nURANUS',
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
                        color: uranuscolor, 
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Uranus adalah planet raksasa es yang ditemukan pada tahun 1781 oleh William Herschel. Planet ini dikenal karena kemiringannya yang unik hampir 90 derajat, menyebabkan Uranus berputar di sisinya seperti bola yang berguling. Dengan diameter ekuatorial 31.763 mil (51.118 kilometer), Uranus empat kali lebih lebar daripada Bumi dan mengorbit Matahari pada jarak rata-rata 1,8 miliar mil (2,9 miliar kilometer), memerlukan sekitar 84 tahun Bumi untuk menyelesaikan satu orbit. Uranus memiliki 28 bulan yang dikenal, dinamai berdasarkan karakter dari karya Shakespeare dan Pope, serta dua set cincin samar yang sebagian besar terdiri dari material abu-abu gelap.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: 'Ruluko',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                           if (_showMoreDetails) 
                            const Text(
                              'Atmosfer Uranus sebagian besar terdiri dari hidrogen dan helium, dengan metana yang memberikan warna biru-hijau, dan mengalami angin ekstrem yang mencapai 560 mil per jam (900 kilometer per jam). Magnetosfer planet ini memiliki bentuk yang tidak teratur, dengan sumbu magnet yang miring hampir 60 derajat dari sumbu rotasinya, menghasilkan aurora yang berbeda dari yang ada di Bumi. Karena lingkungannya yang keras, Uranus dianggap tidak ramah terhadap kehidupan, dengan permukaan yang terdiri dari massa fluida yang berputar dan suhu yang turun hingga -224,2 derajat Celsius (49K), menjadikannya bahkan lebih dingin daripada Neptunus.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'Ruluko',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          const SizedBox(height: 20),
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
              icon: const Icon(Icons.arrow_back, color: uranuscolor, size: 30),
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
