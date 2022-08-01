void main(List<String> args) {
  int sayi = 5;
  Ogrenci enes = Ogrenci();
  enes.ogrAd = "Enes Baysal";
  enes.ogrNo = 231;
  enes.aktifMi = true;
  Ogrenci hasan = Ogrenci();
  Ogrenci ayse = Ogrenci();
}

class Ogrenci {
  int? ogrNo;
  String? ogrAd;
  bool? aktifMi;

  void dersCalis() {
    print("Öğrenci Ders Çalıştı");
  }
}
