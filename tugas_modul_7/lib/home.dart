import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Home'),
      ),

      backgroundColor: Colors.blue,

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            // TEKS ATAS
            const Text(
              'Banyak aplikasi memiliki informasi yang berbeda. '
                  'Contohnya, ada layar produk, dan ketika pengguna '
                  'mengklik produk, akan muncul layar dengan detail '
                  'produk tersebut.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            const Spacer(),

            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                width: 230,
                height: 230,
                color: Colors.white,

                child: Image.network(
                  'https://clipart-library.com/2023/lovepik-red-house-png-image_401406896_wh1200.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const Spacer(),

            // TEKS BAWAH
            const Text(
              'Pertama kita perlu membuat dua halaman atau '
                  '"routes" yang ingin kita tampilkan. Selanjutnya, '
                  'kita gunakan perintah Navigator.push() untuk '
                  'berpindah dari halaman pertama ke halaman kedua. '
                  'Ini seperti kita membuka halaman baru. Terakhir, '
                  'kita bisa kembali dari halaman kedua ke halaman '
                  'pertama menggunakan Navigator.pop(). Seperti '
                  'menutup halaman kedua dan kembali ke halaman pertama.',
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
                Navigator.pushNamed(context, '/tujuan');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              child: const Text('Ke halaman tujuan'),
            ),
          ],
        ),
      ),
    );
  }
}