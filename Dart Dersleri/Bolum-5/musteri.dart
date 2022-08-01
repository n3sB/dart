class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }
  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      _musteriNo = 300;
  }

  String get musteriNoSoyle {
    return "Musteri no: $_musteriNo";
  }

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      _musteriNo = 300;
  }

  void bilgileriYazdir() {
    print("Müşteri oluşturuldu müşteri no: $_musteriNo");
  }
}
