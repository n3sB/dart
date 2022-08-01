import 'dart:math';

class Ogrenci {
  int notDegeri;
  int ogrId;

  Ogrenci({this.ogrId = 1, this.notDegeri = 1}) {}

  String toString() {
    return "Ögrencinin ID'si: $ogrId notu: $notDegeri olarak atanmıştır.";
  }

  void ogrenciListesiniDoldur(List<Ogrenci> liste) {
    for (int i = 0; i < liste.length; i++) {
      liste[i] = Ogrenci(
          ogrId: Random().nextInt(100), notDegeri: Random().nextInt(100));
    }
  }

  double notOrtalamasiHesapla(List<Ogrenci> liste) {
    int toplam = 0;
    for (Ogrenci oankiOgrenci in liste) {
      toplam += oankiOgrenci.notDegeri;
    }

    return toplam / liste.length;
  }
}
