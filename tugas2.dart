import 'dart:io';

void main() {
  stdout.write("Masukkan skor ujian (0 - 100): ");
  int? skor = int.tryParse(stdin.readLineSync()!);

  if (skor == null) {
    print("Input tidak valid. Harus berupa angka.");
  } else if (skor < 0 || skor > 100) {
    print("Skor harus berada di antara 0 sampai 100.");
  } else {
    String grade;

    if (skor >= 85) {
      grade = 'A';
    } else if (skor >= 70) {
      grade = 'B';
    } else if (skor >= 60) {
      grade = 'C';
    } else if (skor >= 50) {
      grade = 'D';
    } else {
      grade = 'E';
    }

    print("Grade Anda: $grade");
  }
}
