import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Tujuan'),
      ),

      backgroundColor: Colors.orange,

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            // TEKS ATAS
            const Text(
              'Untuk berpindah ke halaman baru, gunakan metode '
                  'Navigator.push(). Metode push() akan menambahkan '
                  'Route ke dalam tumpukan Route yang dikelola oleh '
                  'Navigator. Route ini dapat dibuat secara kustom '
                  'atau menggunakan MaterialPageRoute, yang memiliki '
                  'animasi transisi sesuai dengan platform yang digunakan.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            const Spacer(),

            // GAMBAR PULAU
            Container(
              width: 230,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.network(
                'https://clipart-library.com/image_gallery2/Island-Free-PNG-Image.png',
                fit: BoxFit.contain,
              ),
            ),

            const Spacer(),

            // TEKS BAWAH
            const Text(
              'Untuk menutup halaman kedua dan kembali ke halaman '
                  'pertama, gunakan metode Navigator.pop(). Metode pop() '
                  'akan menghapus Route saat ini dari tumpukan Route '
                  'yang dikelola oleh Navigator.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 15),

            // TOMBOL
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Kembali ke home'),
            ),
          ],
        ),
      ),
    );
  }
}