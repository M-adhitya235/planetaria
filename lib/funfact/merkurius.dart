import 'package:flutter/material.dart';
import '/constants.dart';

class FunFactMerkurius extends StatelessWidget {
  const FunFactMerkurius({super.key});

  final List<String> funFacts = const [
    'Merkurius tidak memiliki bulan atau cincin.',
    'Merkurius adalah planet terkecil di tata surya.',
    'Merkurius adalah planet yang paling dekat dengan Matahari.',
    'Berat Anda di Merkurius akan menjadi 38% dari berat Anda di Bumi.',
    'Satu hari solar di permukaan Merkurius berlangsung selama 176 hari Bumi.',
    'Satu tahun di Merkurius hanya berlangsung selama 88 hari Bumi.',
    'Tidak diketahui siapa yang pertama kali menemukan Merkurius.',
    'Merkurius memiliki eksentrisitas orbital tertinggi di antara semua planet, dengan jarak dari Matahari berkisar antara 46 hingga 70 juta km.',
    'Merkurius memiliki diameter ekuator sekitar 4,879 km, dibandingkan dengan 12,742 km untuk Bumi.',
    'Merkurius adalah planet kedua terpadat, dengan densitas 5.4 gram per sentimeter kubik, setelah Bumi.',
    'Permukaan Merkurius memiliki kerutan yang disebut Lobate Scarps, yang terbentuk akibat pendinginan dan kontraksi inti besi planet.',
    'Ilmuwan berpendapat bahwa inti besi Merkurius mungkin dalam keadaan cair, dengan sekitar 42% dari volume planet terdiri dari inti.',
    'Merkurius adalah planet kedua terpanas, dengan suhu di sisi yang menghadap Matahari mencapai hingga 427°C, sementara sisi lainnya bisa serendah -173°C.',
    'Merkurius adalah planet yang paling banyak memiliki kawah, disebabkan oleh tabrakan dengan asteroid dan komet.',
    'Hanya dua pesawat ruang angkasa yang pernah mengunjungi Merkurius: Mariner 10 pada tahun 1974-1975 dan Messenger yang diluncurkan pada tahun 2004.',
    'Merkurius dinamai berdasarkan utusan Romawi kepada para dewa.',
    'Merkurius memiliki atmosfer yang sangat tipis, yang tidak dapat dipertahankan karena gravitasinya yang rendah.',
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
                      'FAKTA - FAKTA\nPLANET MERKURIUS',
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
                          color: mercurycolor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            fact,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontFamily: 'Ruluko',
                              color: Color.fromARGB(255, 228, 226, 211),
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
