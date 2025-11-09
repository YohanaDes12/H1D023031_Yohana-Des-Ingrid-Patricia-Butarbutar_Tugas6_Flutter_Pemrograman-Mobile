# Proyek Flutter: Tugas 7 - H1D023031

- **Oleh:** Yohana Des Ingrid Patricia Butarbutar
- **NIM:**  H1D023031
- **Shift:**  E

## 🚀 Proses Passing Data

Passing data dari `lib/ui/form_data.dart` (layar sumber/Form) ke `lib/ui/tampil_data.dart` (layar tujuan/Hasil) dilakukan saat navigasi menggunakan `Navigator.push`.

### Tampilan Form 
<img width="1024" height="1536" alt="image" src="https://github.com/user-attachments/assets/f5f3cbf5-38c0-4674-b8bf-e9b1283f21d8" />

### TAampilan data
<img width="351" height="658" alt="image" src="https://github.com/user-attachments/assets/6c6b9879-f4bf-4615-b7cc-b8ebfb3baeaa" />

### 1. Pengambilan dan Pemrosesan Data di `form_data.dart`

1.  **Pengambilan Input:** Nilai dari `TextEditingController` (`_nameController.text`, `_nimController.text`, `_yearController.text`) diambil setelah form divalidasi (`_formKey.currentState!.validate()`).
2.  **Pemrosesan Data:** Fungsi `_submitData()` menghitung **umur** (`umur`) berdasarkan `tahunLahir` yang diinput dan tahun saat ini (`DateTime.now().year`).
3.  **Pengiriman Data (Navigasi):** Data yang sudah diproses dan data mentah (Nama, NIM, Tahun Lahir, Umur) dikirimkan melalui `MaterialPageRoute`.

```dart
// Saat navigasi di form_data.dart

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => TampilDataScreen(
      // Data dikirim sebagai parameter bernama (Named Arguments)
      nama: _nameController.text,
      nim: _nimController.text,
      tahunLahir: tahunLahir.toString(),
      umur: umur.toString(), // Termasuk data yang diproses (Umur)
    ),
  ),
);



