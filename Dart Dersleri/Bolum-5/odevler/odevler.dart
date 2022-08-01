class CemberDaire {
  int _yaricap = 1;
  double _pi = 3.14;

  CemberDaire(int yaricap) {
    _yariCapKontrol = yaricap;
  }
  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yaricap = deger;
    } else {
      _yaricap = 1;
    }
  }

  double cevreHesapla() {
    double cevre = _pi * 2 * _yaricap;
    return cevre;
  }

  double alanHesapla() {
    double alan = _pi * _yaricap * _yaricap;
    return alan;
  }
}
