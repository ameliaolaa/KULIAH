void main() {
  // Data karyawan
  String namaKaryawan = "John Doe";  // Nama karyawan
  int jamKerja = 40;                // Jumlah jam kerja dalam seminggu
  double upahPerJam = 50.0;         // Upah per jam
  bool statusKaryawan = true;       // Status karyawan (true = tetap, false = kontrak)

  // Menghitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Menentukan persentase pajak berdasarkan status karyawan
  double pajak = 0.0;
  if (statusKaryawan) {
    // Karyawan tetap (potongan 10%)
    pajak = gajiKotor * 0.10;
  } else {
    // Karyawan kontrak (potongan 5%)
    pajak = gajiKotor * 0.05;
  }

  // Menghitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Menampilkan hasil
  print('Nama Karyawan: $namaKaryawan');
  print('Gaji Kotor: \$${gajiKotor.toStringAsFixed(2)}');
  print('Pajak: \$${pajak.toStringAsFixed(2)}');
  print('Gaji Bersih: \$${gajiBersih.toStringAsFixed(2)}');
}
