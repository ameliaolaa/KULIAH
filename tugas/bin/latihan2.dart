void main() {
  // Mendefinisikan panjang dan lebar dengan tipe data double
  double panjang = 10.5;  // Contoh panjang
  double lebar = 4.2;     // Contoh lebar

  // Menghitung luas dan keliling
  double luas = panjang * lebar;
  double keliling = 2 * (panjang + lebar);

  // Menampilkan hasil perhitungan dengan format yang rapi
  print('Panjang: $panjang');
  print('Lebar: $lebar');
  print('Luas: ${luas.toStringAsFixed(2)}');
  print('Keliling: ${keliling.toStringAsFixed(2)}');
}
