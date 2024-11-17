import 'package:flutter/material.dart';
import '/constants.dart';

class FunFactNeptunus extends StatelessWidget {
  const FunFactNeptunus ({super.key});

  final List<String> funFacts = const [
    'Neptunus adalah planet yang paling jauh dari Matahari.',
    'Neptunus adalah gas raksasa terkecil di tata surya',
    'Satu tahun di Neptunus berlangsung selama 165 tahun Bumi.',
    'Neptunus dinamai setelah dewa laut Romawi.',
    'Neptunus memiliki enam cincin tipis yang samar.',
    'Neptunus tidak dikenal oleh orang-orang kuno dan tidak terlihat dengan mata telanjang.',
    'Neptunus berputar pada porosnya dengan sangat cepat. ',
    'Meskipun lebih kecil dari Uranus, Neptunus memiliki massa yang lebih besar',
    'Atmosfer Neptunus terdiri dari 74% hidrogen, 25% helium, dan sekitar 1% metana.',
    'Neptunus memiliki iklim yang sangat aktif, dengan badai besar yang berputar di atmosfer atasnya. Angin berkecepatan tinggi dapat mencapai 600 meter per detik.',
    'Cincin Neptunus mungkin terdiri dari partikel es yang dicampur dengan butiran debu dan mungkin dilapisi zat berbasis karbon.',
    'Neptunus memiliki 14 bulan, dengan bulan yang paling menarik adalah Triton.',
    'Hanya satu pesawat luar angkasa yang telah melintasi Neptunus. Voyager 2 melintas dekat planet ini pada tahun 1989.'
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
                      'FAKTA - FAKTA\nPLANET NEPTUNUS',
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
                          color: neptunecolor,
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
