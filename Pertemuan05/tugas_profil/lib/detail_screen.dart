import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String nama;
  final String npm;

  // Diubah ke konstruktor standar agar aman di semua versi Flutter
  const DetailScreen({super.key, required this.nama, required this.npm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Profil Mahasiswa"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Tampilkan Nama dengan Custom Font
            Text(
              nama,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28.0,
                fontFamily: 'Staatliches',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Tampilkan NPM
            Text(
              "NPM: $npm",
              style: const TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            const SizedBox(height: 16.0),
            // Deskripsi Singkat Minat & Hobi
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Halo! Saya adalah mahasiswa Teknik Informatika di ULBI yang memiliki minat besar dalam pengembangan web full-stack, pemrograman jaringan, serta eksplorasi teknologi mobile menggunakan Flutter.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            const SizedBox(height: 24.0),
            // Label Galeri Aktivitas
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Gallery Aktivitas",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12.0),
            // Gallery Aktivitas (Horizontal Scroll dengan minimal 3 gambar)
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildGalleryItem('images/ibadah.jpg'),
                  _buildGalleryItem('images/gunung.jpg'),
                  _buildGalleryItem('images/pantai.jpg'),
                ],
              ),
            ),
            const SizedBox(height: 32.0),
            // Tombol Kembali (Navigator.pop)
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.lightGreen),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Kembali",
                style: TextStyle(color: Colors.lightGreen),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget helper untuk galeri foto (kata 'and' sudah dihapus)
  Widget _buildGalleryItem(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(
          imagePath,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
