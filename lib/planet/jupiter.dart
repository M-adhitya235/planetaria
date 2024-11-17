import 'package:flutter/material.dart';
import '/constants.dart';

class JupiterPage extends StatefulWidget {
  const JupiterPage({super.key});

  @override
  _JupiterPageState createState() => _JupiterPageState();
}

class _JupiterPageState extends State<JupiterPage> {
  bool _showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/jupiter.jpg'),
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
                    'PLANET\nJUPITER',
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
                        color: jupitercolor, 
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Jupiter, planet terbesar di tata surya, memiliki atmosfer yang kaya dengan awan amonia dan air, diwarnai dengan pita gelap yang disebut sabuk dan pita terang yang disebut zona. Dengan radius 69.911 kilometer, Jupiter berukuran 11 kali lebih besar dari Bumi dan berjarak rata-rata 778 juta kilometer dari Matahari. Ia memiliki hari terpendek di tata surya, hanya 10 jam, dan menyelesaikan orbitnya di sekitar Matahari dalam 12 tahun Bumi. Memiliki 95 bulan, termasuk bulan terbesar Ganymede, serta cincin tipis yang terdiri dari partikel gelap, Jupiter tidak memiliki permukaan yang solid.',
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
                              'Lingkungan di dalamnya sangat ekstrim, dengan suhu dan tekanan yang tinggi, sehingga tidak mendukung kehidupan seperti yang kita kenal. Namun, bulan Europa dianggap sebagai tempat yang mungkin mendukung kehidupan, karena ada lautan besar di bawah permukaannya. Struktur Jupiter mirip dengan Matahari, terutama terdiri dari hidrogen dan helium, dan memiliki inti yang lebih besar dari yang diperkirakan, bersifat kabur. Dengan kecepatan angin mencapai 539 kilometer per jam, Jupiter juga terkenal dengan bintik merah raksasanya yang merupakan badai yang berlangsung selama ratusan tahun. Magnetosfernya, yang 16 hingga 54 kali lebih kuat daripada Bumi, menciptakan radiasi intens dan aurora yang menakjubkan di kutubnya.',
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
              icon: const Icon(Icons.arrow_back, color: jupitercolor, size: 30),
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
