import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormDataScreen extends StatefulWidget {
  const FormDataScreen({super.key});

  @override
  State<FormDataScreen> createState() => _FormDataScreenState();
}

class _FormDataScreenState extends State<FormDataScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController =
      TextEditingController(text: 'Yohana Des Ingrid Patricia Butarbutar');
  final TextEditingController _nimController =
      TextEditingController(text: 'H1D023031');
  final TextEditingController _yearController =
      TextEditingController(text: '2004');

  void _submitData() {
    if (_formKey.currentState!.validate()) {
      int currentYear = DateTime.now().year;
      int tahunLahir = int.tryParse(_yearController.text) ?? 0;
      int umur = tahunLahir > 0 ? currentYear - tahunLahir : 0;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TampilDataScreen(
            nama: _nameController.text,
            nim: _nimController.text,
            tahunLahir: tahunLahir.toString(),
            umur: umur.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Input Data',
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
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Nama"),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Nama tidak boleh kosong' : null,
              ),
              const SizedBox(height: 20),
              const Text("NIM"),
              TextFormField(
                controller: _nimController,
                decoration: const InputDecoration(),
                validator: (value) =>
                    value == null || value.isEmpty ? 'NIM tidak boleh kosong' : null,
              ),
              const SizedBox(height: 20),
              const Text("Tahun Lahir"),
              TextFormField(
                controller: _yearController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(),
                validator: (value) {
                  if (value == null || int.tryParse(value) == null) {
                    return 'Masukkan tahun lahir yang valid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: _submitData,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                  ),
                  child: const Text(
                    'Simpan',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
