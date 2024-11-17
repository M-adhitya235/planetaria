import 'package:flutter/material.dart';
import '/constants.dart';

class SaturnPage extends StatefulWidget {
  const SaturnPage({super.key});

  @override
  _SaturnPageState createState() => _SaturnPageState();
}

class _SaturnPageState extends State<SaturnPage> {
  bool _showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/saturnus.jpg'),
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
                    'PLANET\nSATURNUS',
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
                        color: saturncolor, 
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Saturnus, planet gas raksasa yang terdiri sebagian besar dari hidrogen dan helium, dikenal dengan cincin yang paling spektakuler di tata surya dan memiliki banyak bulan, termasuk Enceladus dan Titan yang menampung lautan internal. Dikenal sejak zaman kuno dan dinamai berdasarkan dewa Romawi pertanian, Saturnus memiliki diameter ekuatorial sekitar 120.500 kilometer, sembilan kali lebih besar dari Bumi, dan berjarak rata-rata 1,4 miliar kilometer dari Matahari. Hari di Saturnus berlangsung selama 10,7 jam, sementara tahun Saturnus memakan waktu sekitar 29,4 tahun Bumi. Saat ini, Saturnus memiliki 146 bulan yang terkonfirmasi, dengan lebih banyak lagi menunggu penamaan resmi.',
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
                              'Cincinnya, yang terdiri dari partikel es dan batu yang bervariasi dari debu hingga ukuran gunung, terbentuk dari puing-puing komet dan asteroid yang ditarik oleh gravitasi Saturnus. Struktur Saturnus meliputi inti padat yang dikelilingi oleh hidrogen cair dan hidrogen metalik. Meskipun Saturnus tidak memiliki permukaan yang solid dan memiliki atmosfer yang penuh dengan awan serta angin yang sangat kencang, ia juga memiliki fenomena unik seperti aliran jet berbentuk heksagon di kutub utara. Magnetosfer Saturnus, meski lebih kecil dari Jupiter, masih sangat kuat dan menghasilkan aurora yang dipengaruhi oleh partikel dari bulan-bulannya. Meskipun lingkungan Saturnus tidak mendukung kehidupan seperti yang kita kenal, bulan-bulannya, terutama Enceladus dan Titan, mungkin memiliki potensi untuk mendukung kehidupan.',
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
              icon: const Icon(Icons.arrow_back, color: saturncolor, size: 30),
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
