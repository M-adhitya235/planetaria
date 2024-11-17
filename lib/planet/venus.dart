import 'package:flutter/material.dart';
import '/constants.dart';

class VenusPage extends StatefulWidget {
  const VenusPage({super.key});

  @override
  _VenusPageState createState() => _VenusPageState();
}

class _VenusPageState extends State<VenusPage> {
  bool _showMoreDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/venus.jpg'),
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
                    'PLANET\nVENUS',
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
                        color: venuscolor, 
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Venus, planet kedua dari Matahari dan tetangga terdekat Bumi, dikenal sebagai objek ketiga paling terang di langit setelah Matahari dan Bulan. Dengan struktur dan ukuran yang mirip Bumi, Venus sering disebut sebagai "kembaran jahat" Bumi. Atmosfer tebalnya menyebabkan efek rumah kaca yang berlebihan, menjadikannya planet terpanas di tata surya dengan suhu permukaan yang cukup panas untuk melelehkan timah.',
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
                                  'Di bawah awan yang tebal, permukaan Venus terdapat gunung berapi dan pegunungan yang terdeformasi. Nama Venus diambil dari dewi cinta dan kecantikan dalam mitologi Romawi, dan sebagian besar fitur di planet ini dinamai berdasarkan nama wanita. Meskipun kondisi di permukaan tidak mendukung kehidupan, pada ketinggian sekitar 50 kilometer, suhu dan tekanan atmosfer bisa mendukung kehidupan mikroba. Venus mengorbit Matahari pada jarak rata-rata 67 juta mil (108 juta kilometer), dengan diameter sekitar 7,521 mil (12,104 kilometer), menjadikannya hampir seukuran Bumi.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Ruluko',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Hari di Venus berlangsung lebih lama daripada tahunnya, dengan satu hari setara 243 hari Bumi. Venus tidak memiliki bulan, tetapi memiliki quasi-satelit bernama Zoozve, yang ditemukan pada tahun 2002. Struktur internal Venus mirip dengan Bumi, dengan inti besi yang dikelilingi oleh mantel batu panas dan kerak luar yang tipis. Proses geologi, seperti subduksi, mungkin terjadi di Venus, meskipun saat ini proses tektonik lempeng tidak berfungsi seperti di Bumi. Misi seperti yang dilakukan NASA melalui pesawat ruang angkasa Magellan telah memetakan permukaan Venus, mengungkapkan lanskap yang dipenuhi gunung berapi dan pegunungan yang menjadikannya objek menarik untuk penelitian lebih lanjut.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontFamily: 'Ruluko',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Misi seperti yang dilakukan NASA melalui pesawat ruang angkasa Magellan telah memetakan permukaan Venus, mengungkapkan lanskap yang dipenuhi gunung berapi dan pegunungan yang menjadikannya objek menarik untuk penelitian lebih lanjut.',
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
              icon: const Icon(Icons.arrow_back, color: venuscolor, size: 30),
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
