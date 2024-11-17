import 'package:flutter/material.dart';
import '/constants.dart';

class FunFactBumi extends StatelessWidget {
  const FunFactBumi({super.key});

  final List<String> funFacts = const [
    'Rotasi Bumi semakin melambat, sekitar 17 milidetik setiap seratus tahun, yang dapat menyebabkan hari menjadi 25 jam dalam waktu 140 juta tahun.',
    'Bumi dulunya dianggap sebagai pusat alam semesta hingga Copernicus mengusulkan bahwa Matahari berada di pusat.',
    'Bumi memiliki medan magnet yang melindungi dari angin solar, dihasilkan oleh inti nikel-besi dan rotasi cepat planet.',
    'Bumi hanya memiliki satu bulan, yang merupakan satelit terbesar dibandingkan dengan ukuran planet yang diorbitnya.',
    'Bumi adalah satu-satunya planet yang tidak dinamai setelah dewa atau dewi',
    'Bumi adalah planet terpadat di tata surya, dengan kepadatan rata-rata sekitar 5,52 gram per sentimeter kubik.',
    'Sekitar 70% permukaan Bumi tertutup air, menghasilkan sebutan "Planet Biru".',
    'Bumi sebagian besar terdiri dari besi (32,1%), oksigen (30,1%), silikon (15,1%), dan magnesium (13,9%).',
    'Waktu yang dibutuhkan Bumi untuk berotasi pada porosnya adalah 23 jam, 56 menit, dan 4 detik (hari sidereal).',
    'Satu tahun di Bumi berlangsung selama 365,2564 hari, yang mengakibatkan perlunya tahun kabisat.',
    'Selain Bulan, Bumi memiliki dua asteroid yang terjebak dalam orbit ko-orbital, yaitu 3753 Cruithne dan 2002 AA29.',
    'Bumi tidak bulat sempurna, tetapi memiliki bentuk geoid, dengan sedikit tonjolan di sekitar khatulistiwa akibat rotasi.',
    'Bumi miring sekitar 66 derajat, yang mempengaruhi iklim dan musim.',
    'Hanya 3% dari total air di Bumi yang merupakan air tawar, dengan lebih dari 2% beku dalam es dan gletser.',
    'Benua Asia mencakup 30% dari total area daratan Bumi tetapi mewakili 60% dari populasi dunia.',
    'Setiap musim dingin, sekitar 1 septillion kristal salju turun dari langit.',
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
                      'FAKTA - FAKTA\nPLANET BUMI',
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
                          color: earthcolor,
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
