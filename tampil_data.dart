import 'package:flutter/material.dart';

class TampilDataScreen extends StatelessWidget {
  final String nama;
  final String nim;
  final String tahunLahir;
  final String umur;

  const TampilDataScreen({
    super.key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
    required this.umur,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perkenalan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun',
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
