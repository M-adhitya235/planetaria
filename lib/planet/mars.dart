import 'package:flutter/material.dart';
import '/constants.dart';

class MarsPage extends StatefulWidget {
  const MarsPage({super.key});
  
  @override
  _MarsPageState createState() => _MarsPageState();
}

class _MarsPageState extends State<MarsPage> {
  bool _showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mars.jpg'),
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
                    'PLANET\nMARS',
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
                        color: marscolor, 
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Mars, yang dikenal sebagai "Planet Merah" karena mineral besi di permukaannya yang teroksidasi dan memberikan warna kemerahan, adalah planet keempat dari Matahari yang telah dieksplorasi secara ekstensif oleh misi NASA. Secara historis, Mars pernah lebih hangat dan lebih basah, mendukung kemungkinan kehidupan kuno. Dengan radius 3.390 kilometer, Mars memiliki ukuran sekitar setengah dari Bumi dan mengorbit Matahari pada jarak rata-rata 228 juta kilometer, menyelesaikan satu rotasi setiap 24,6 jam.',
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
                                  'Mars memiliki dua bulan kecil, Phobos dan Deimos, dan tidak memiliki cincin, meskipun Phobos dapat menciptakan cincin berdebu saat bertabrakan dengan Mars dalam waktu sekitar 50 juta tahun. Mars memiliki inti yang padat dikelilingi oleh mantel berbatu dan kerak yang terbuat dari berbagai mineral. Planet ini memiliki topografi yang beragam, termasuk gunung berapi terbesar, Olympus Mons, dan sistem ngarai Valles Marineris, yang sepuluh kali lebih besar dari Grand Canyon di Bumi. Meskipun Mars memiliki bukti air kuno, atmosfernya saat ini tipis dan sebagian besar terdiri dari karbon dioksida, menjadikannya tidak layak huni untuk kehidupan seperti yang kita ketahui. Suhu di Mars dapat bervariasi secara dramatis, dan badai debu dapat menutupi permukaan selama berbulan-bulan, sementara daerah yang termagnetisasi di keraknya memberikan petunjuk tentang medan magnet yang pernah ada miliaran tahun yang lalu.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Ruluko',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Meskipun Mars memiliki bukti air kuno, atmosfernya saat ini tipis dan sebagian besar terdiri dari karbon dioksida, menjadikannya tidak layak huni untuk kehidupan seperti yang kita ketahui. Suhu di Mars dapat bervariasi secara dramatis, dan badai debu dapat menutupi permukaan selama berbulan-bulan, sementara daerah yang termagnetisasi di keraknya memberikan petunjuk tentang medan magnet yang pernah ada miliaran tahun yang lalu.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Ruluko',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
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
              icon: const Icon(Icons.arrow_back, color: marscolor, size: 30),
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
