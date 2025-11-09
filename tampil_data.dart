import 'package:flutter/material.dart';

class TampilDataScreen extends StatelessWidget {
  const TampilDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perkenalan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Text(
            'Halo, perkenalkan nama saya Yohana Des Ingrid Patricia Butarbutar, '
            'dengan NIM H1D023031, dan umur saya 20 tahun.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 13,
              height: 1.6,
            ),
          ),
        ),
      ),
    );
  }
}
