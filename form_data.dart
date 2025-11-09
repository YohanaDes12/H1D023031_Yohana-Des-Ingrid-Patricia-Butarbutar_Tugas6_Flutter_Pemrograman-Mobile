import 'package:flutter/material.dart';
import 'tampil_data.dart'; // pastikan ini mengarah ke file tampil_data.dart milikmu

class FormDataScreen extends StatefulWidget {
  const FormDataScreen({super.key});

  @override
  State<FormDataScreen> createState() => _FormDataScreenState();
}

class _FormDataScreenState extends State<FormDataScreen> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _tahunLahirController = TextEditingController();

  void _simpanData() {
    String nama = _namaController.text;
    String nim = _nimController.text;
    String tahunLahir = _tahunLahirController.text;
    int umur = DateTime.now().year - int.parse(tahunLahir);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TampilDataScreen(
          nama: nama,
          nim: nim,
          tahunLahir: tahunLahir,
          umur: umur.toString(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Input Data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black, // teks hitam agar kontras dengan kuning
          ),
        ),
        backgroundColor: Colors.amber, // AppBar warna kuning
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nama'),
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                hintText: 'Masukkan nama',
              ),
            ),
            const SizedBox(height: 16),
            const Text('NIM'),
            TextField(
              controller: _nimController,
              decoration: const InputDecoration(
                hintText: 'Masukkan NIM',
              ),
            ),
            const SizedBox(height: 16),
            const Text('Tahun Lahir'),
            TextField(
              controller: _tahunLahirController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukkan tahun lahir',
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: _simpanData,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, // tombol kuning
                  foregroundColor: Colors.black, // teks tombol hitam
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                child: const Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
