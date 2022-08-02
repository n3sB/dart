import 'dart:math';

void main(List<String> args) {
  final uretici = RastgeleMetinUretici();
  String? sonuc = uretici.degerUret();
  if (sonuc == null) {
    print("Null Değer oldu");
  } else {
    metniYazdir(sonuc);
  }
}

class RastgeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return "String İfade";
    } else {
      return null;
    }
  }
}

void metniYazdir(String ifade) {
  print(ifade);
}
