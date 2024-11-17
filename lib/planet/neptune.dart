import 'package:flutter/material.dart';
import '/constants.dart';

class NeptunePage extends StatefulWidget {
  const NeptunePage({super.key});

  @override
  _NeptunePageState createState() => _NeptunePageState();
}

class _NeptunePageState extends State<NeptunePage> {
  bool _showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/neptunus.jpg'),
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
                    'PLANET\nNEPTUNUS',
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
                        color: neptunecolor, 
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Neptunus adalah planet raksasa es yang terletak lebih dari 30 kali jarak Bumi dari Matahari dan merupakan satu-satunya planet di tata surya yang tidak terlihat dengan mata telanjang. Ditemukan pada tahun 1846 melalui perhitungan matematis oleh Johann Galle berdasarkan prediksi Urbain Le Verrier, planet ini dinamai menurut dewa laut Romawi. Neptunus memiliki diameter ekuatorial sekitar 30.775 mil (49.528 kilometer), menjadikannya sekitar empat kali lebih lebar daripada Bumi, dan berada pada jarak rata-rata 2,8 miliar mil (4,5 miliar kilometer) dari Matahari, dengan satu tahun Neptunus berlangsung sekitar 165 tahun Bumi.',
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
                              'Atmosfer Neptunus, yang sebagian besar terdiri dari hidrogen, helium, dan metana, menghasilkan warna biru yang khas, dan planet ini memiliki angin tercepat di tata surya, dengan kecepatan mencapai lebih dari 1.200 mil per jam (2.000 kilometer per jam). Neptunus memiliki 16 bulan yang dikenal, termasuk Triton, yang memiliki orbit retrograde dan aktif secara geologis, serta setidaknya lima cincin utama yang terdiri dari material gelap. Struktur planet ini tidak memiliki permukaan padat, melainkan terdiri dari atmosfer yang dalam dan suhu yang sangat dingin, mencapai -391 derajat Fahrenheit (-235 derajat Celsius) di Triton. Magnetosfer Neptunus juga memiliki kekuatan 27 kali lebih besar daripada Bumi dan memiliki sumbu magnet yang miring sekitar 47 derajat dari sumbu rotasi planet.',
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
              icon: const Icon(Icons.arrow_back, color: neptunecolor, size: 30),
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
