void main(List<String> args) {
  Kare k = Kare("Kare", 5);
  print(k.alanHesapla());
  print(k.selamla());

  Dikdortgen d = Dikdortgen("Dikdörtgen", 5, 6);
  print(d.cevreHesapla());
  print(d.selamla());
}

abstract class Sekil {
  String isim;

  Sekil(this.isim) {}
  double alanHesapla();
  double cevreHesapla();
  String selamla() {
    return "Ben $isim sınıfındanım";
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(String isim, this.kenar) : super(isim) {}
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  String selamla() {
    // TODO: implement selamla
    return super.selamla();
  }
}

class Dikdortgen extends Sekil {
  int kisaKenar, uzunKenar;

  Dikdortgen(String isim, this.kisaKenar, this.uzunKenar) : super(isim) {}

  @override
  double alanHesapla() {
    return uzunKenar * kisaKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (kisaKenar + uzunKenar).toDouble();
  }
}
