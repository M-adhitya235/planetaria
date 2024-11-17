import 'package:flutter/material.dart';
import '/constants.dart';

class EarthPage extends StatefulWidget {
  const EarthPage({super.key});

  @override
  _EarthPageState createState() => _EarthPageState();
}

class _EarthPageState extends State<EarthPage> {
  bool _showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bumi.jpg'),
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
                    'PLANET\nBUMI',
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
                        color: earthcolor, 
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Bumi adalah planet terbesar di antara empat planet terestrial yang terdekat dengan Matahari, dengan diameter ekuatorial sekitar 12.760 kilometer, menjadikannya yang kelima terbesar di tata surya. Bumi unik karena merupakan satu-satunya planet yang memiliki air dalam bentuk cair di permukaannya, yang mendukung kehidupan.',
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
                                  'Nama "Bumi" berasal dari bahasa Inggris Kuno dan bahasa Jermanik, yang berarti "tanah." Berbeda dengan planet lain, yang dinamai dewa-dewa Yunani dan Romawi, nama Bumi telah ada selama lebih dari 1.000 tahun. Sebagai planet yang ramah bagi kehidupan, Bumi memiliki suhu dan komposisi kimia yang memungkinkan adanya air cair, yang telah ada sejak kehidupan pertama muncul sekitar 3,8 miliar tahun lalu.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Ruluko',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Bumi mengorbit Matahari dengan jarak rata-rata 150 juta kilometer, atau satu unit astronomi (AU), dan membutuhkan sekitar 365,25 hari untuk menyelesaikan satu putaran penuh. Satu hari di Bumi berlangsung selama 23,9 jam. Kemiringan sumbu rotasi Bumi sekitar 23,4 derajat menyebabkan adanya siklus musim. Bumi memiliki satu satelit alami, yaitu Bulan, yang stabilisasi guncangan planet dan berfungsi penting bagi iklim Bumi. Bulan, dengan radius 1.738 kilometer, terletak rata-rata 384.400 kilometer dari Bumi.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Ruluko',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Bumi tidak memiliki cincin dan terbentuk sekitar 4,5 miliar tahun yang lalu dari gas dan debu yang ditarik oleh gravitasi. Struktur Bumi terdiri dari empat lapisan utama: inti dalam yang padat, inti luar yang cair, mantel yang tebal, dan kerak yang solid. Kerak Bumi rata-rata memiliki kedalaman 30 kilometer di daratan, sedangkan di dasar laut, kerak ini lebih tipis, hanya sekitar 5 kilometer. Permukaan Bumi yang terdiri dari gunung, lembah, dan gunung berapi menyebar di hampir 70% dari permukaan planet ini yang tertutup oleh lautan yang dalamnya mengandung 97% air Bumi.',
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
              icon: const Icon(Icons.arrow_back, color: earthcolor, size: 30),
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
