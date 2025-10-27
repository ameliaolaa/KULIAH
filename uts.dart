abstract class Transportasi {
  String id, nama;
  double _tarifDasar;
  int Kapasitas;

  Transportasi(this.id, this.nama, this._tarifDasar, this.Kapasitas);

  double get tarifDasar => _tarifDasar;

  double hitungTarif(int jumlahPenumpang);

  void tampilInfo() {
    print("ID: $id | Nama: $nama | Tarif dasar: $_tarifDasar | Kapasitas: $Kapasitas");
  }
}

class Taksi extends Transportasi {
  double jarak;
  Taksi(super.id, super.nama, super.tarifDasar, super.Kapasitas, this.jarak);

  @override
  double hitungTarif(int jml) => tarifDasar * jarak;
}
class Bus extends Transportasi {
  bool adaWifi;
  Bus(super.id, super.nama, super._tarifDasar, super.Kapasitas, this.adaWifi);

  @override
  double hitungTarif(int jml) => (tarifDasar * jml) + (adaWifi ? 5000 : 0);
}
class Pesawat extends Transportasi {
  String Kelas;
  Pesawat(super.id, super.nama, super._tarifDasar, super.Kapasitas, this.Kelas);

  @override
  double hitungTarif(int jml) => 
      tarifDasar * jml * (Kelas == "Bisnis" ? 1.5 : 1.0);
}
class Pemesanan {
  String idPemesanan, namaPelanggan;
  Transportasi transportasi;
  int jumlahPenumpang;
  double totalTarif;

  Pemesanan(this.idPemesanan, this.namaPelanggan, this.transportasi, this.jumlahPenumpang, this.totalTarif);

  void cetakStruk() {
    print("=== STRUK PEMESANAN ===");
    print("ID: $idPemesanan");
    print("Nama: $namaPelanggan");
    print("Transportasi: ${transportasi}");
    print("Jumlah Penumpang: $jumlahPenumpang");
    print("Total Tarif: Rp${totalTarif.toStringAsFixed(2)}");
  }
}
Pemesanan buatPemesanan (Transportasi t, String nama, int jml){
  double total = t.hitungTarif(jml);
  return Pemesanan("P${DateTime.now().millisecondsSinceEpoch}", nama, t, jml, total);
}

void tampilSemua(List<Pemesanan> daftar) {
  for (var p in daftar){
    p.cetakStruk();
  }
}

void main() {
  var taksi = Taksi("T001", "Taksi Online", 3000, 4, 10);
  var bus = Bus("B001", "Bus Kota", 10000, 40, true);
  var pesawat = Pesawat("P001", "Garuda Air", 500000, 100, "Bisnis");

  var daftar = [
    buatPemesanan(taksi, "Lola", 2),
    buatPemesanan(bus, "Dita", 5),
    buatPemesanan(pesawat, "Mutia", 2),
  ];

  tampilSemua(daftar);
}