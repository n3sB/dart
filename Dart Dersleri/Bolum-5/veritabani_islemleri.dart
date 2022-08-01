import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "Enes";
  String _sifre = "123456";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "Enes" && _sifre == "123456") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  VeritabaniIslemleri() {}
  VeritabaniIslemleri.loginWithNameandPassword(
      String kullaniciAdi, String sifre) {
    _kullaniciAdi = kullaniciAdi;
    _sifre = sifre;
  }
  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
