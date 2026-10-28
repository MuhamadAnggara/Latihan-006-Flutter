import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Pengguna',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiga Aturan Layout flutter'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MyPage1(),
            MyPages2(),
            MyPages3(),
          ],
        ),
      )
    );
  }
}

class MyPage1 extends StatelessWidget {
  const MyPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '1 & 2 Aturan Contraints (batas) dan size (ukuran)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Induk memaksa anak berada di batas 100x1000 hingga 200x200. anak meminta ukuran 500x50, tapi maksa mengikuti batas induk (mentok di lebar 200, tinggi 100).'),
            const SizedBox(height: 10),

            //Contoh aturan 1 dan 2
            ConstrainedBox(
              // induk memberikan  contraints ke bawah (Contraints turun)
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 100,
                maxHeight: 200,
              ),
              // Anak mencoba menentukan ukuran (Ukuran naik)
              child: Container(
                width: 500,
                height: 50,
                color: Colors.blue,
                child: const Text(
                  'Saya Meminta 500x50, tapi dapatnya 200x100',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyPages2 extends StatelessWidget {
  const MyPages2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // const Divider(height: 40, thickness: 2),

              const Text(
                '3. Aturan Posisi (dengan Center)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Induk abu-abu berukuran 200x200. Kotak merah 80x80 tidak bisa menaruh dirinya di tengah, jadi kita gunakan widget Center.'),
              const SizedBox(height: 10),

              // CONTOH ATURAN 3 (CENTER)
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300], // Induk yang memiliki ruang
                // Induk yang menentukan posisi
                child: Center( 
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                    child: const Text('Center', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),

              const Divider(height: 40, thickness: 2),

              const Text(
                '3. Aturan Posisi (dengan Align)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Induk abu-abu berukuran 200x200. Kotak hijau 80x80 ditempatkan di pojok kanan bawah menggunakan widget Align.'),
              const SizedBox(height: 10),

              // CONTOH ATURAN 3 (ALIGN)
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300], // Induk yang memiliki ruang
                // Induk yang menentukan posisi
                child: Align(
                  alignment: Alignment.bottomRight, 
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                    child: const Text('Align', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class MyPages3 extends StatelessWidget {
  const MyPages3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '3. Aturan Posisi (dengan Align)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Induk abu-abu berukuran 200x200. Kotak hijau 80x80 ditempatkan di pojok kanan bawah menggunakan widget Align.'),
              const SizedBox(height: 10),

              // CONTOH ATURAN 3 (ALIGN)
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300], // Induk yang memiliki ruang
                // Induk yang menentukan posisi
                child: Align(
                  alignment: Alignment.bottomRight, 
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                    child: const Text('Align', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

