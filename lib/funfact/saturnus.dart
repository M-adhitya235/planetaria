import 'package:flutter/material.dart';
import '/constants.dart';

class FunFactSaturnus extends StatelessWidget {
  const FunFactSaturnus ({super.key});

  final List<String> funFacts = const [
     'Saturnus adalah planet terjauh yang dapat dilihat dengan mata telanjang',
     'Saturnus sudah dikenal sejak zaman kuno, termasuk oleh bangsa Babilonia dan pengamat dari Timur Jauh.',
     'Planet ini dinamai berdasarkan dewa Romawi Saturnus dan dikenal oleh orang Yunani sebagai Cronus.',
     'Saturnus adalah planet terpipih, dengan diameter kutub yang 90% dari diameter ekuatorialnya.',
     'Saturnus mengorbit Matahari setiap 29,4 tahun Bumi.',
     'Atmosfer atas Saturnus terbagi menjadi sabuk awan.',
     'Saturnus memiliki badai berbentuk oval yang mirip dengan Jupiter.',
     'Saturnus sebagian besar terdiri dari hidrogen, yang ada dalam lapisan yang semakin padat semakin dalam ke dalam planet.',
     'Saturnus memiliki 150 bulan dan moonlet yang lebih kecil, semuanya merupakan dunia beku.',
     'Titan adalah bulan dengan atmosfer kaya nitrogen yang kompleks dan padat.',
     'Empat pesawat luar angkasa telah mengunjungi Saturnus, termasuk Pioneer 11, Voyager 1 dan 2, serta misi Cassini-Huygens.',
     'Cincin Saturnus dibagi menjadi tujuh kelompok, dinamai secara alfabetis berdasarkan urutan penemuannya (dari luar ke dalam: D, C, B, A, F, G, dan E). Cincin F dijaga oleh dua bulan Saturnus, Prometheus dan Pandora, yang dikenal sebagai "shepherd moons".',
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
                      'FAKTA - FAKTA\nPLANET SATURNUS',
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
                          color: saturncolor,
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
