import 'package:flutter/material.dart';
import '/constants.dart';

class FunFactVenus extends StatelessWidget {
  const FunFactVenus({super.key});

  final List<String> funFacts = const [
    'Venus tidak memiliki bulan atau cincin.',
    'Venus hampir sebesar Bumi, dengan diameter 12,104 km.',
    'Venus diyakini terdiri dari inti besi, mantel berbatu, dan kerak silikat.',
    'Satu hari di permukaan Venus berlangsung sekitar 117 hari Bumi.',
    'Satu tahun di Venus berlangsung selama 225 hari Bumi.',
    'Suhu di permukaan Venus dapat mencapai hingga 471 °C.',
    'Venus membutuhkan 243 hari Bumi untuk berputar sekali pada porosnya.',
    'Venus berotasi dalam arah yang berlawanan dengan sebagian besar planet lain.',
    'Venus adalah objek kedua paling terang di langit malam, hanya kalah dari Bulan.',
    'Tekanan atmosfer di Venus 92 kali lebih besar daripada di Bumi.',
    'Venus sering disebut sebagai planet saudara Bumi karena kemiripan ukuran dan komposisi.',
    'Sisi yang sama dari Venus selalu menghadap Bumi saat keduanya berada pada jarak terdekat.',
    'Venus dikenal sebagai Bintang Pagi dan Bintang Sore.',
    'Venus adalah planet terpanas di tata surya, dengan suhu rata-rata 462 °C.',
    'Studi mendalam tentang Venus selesai pada tahun 2015 setelah misi Venus Express.',
    'Uni Soviet mengirim misi pertama ke Venus, Venera 1, pada tahun 1961.',
    'Dulu Venus dianggap sebagai surga tropis, tetapi ternyata penuh dengan suhu ekstrem.',
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
                      'FAKTA - FAKTA\nPLANET VENUS',
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
                          color: venuscolor,
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
