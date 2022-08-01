void main(List<String> args) {
  Kisi enes = Kisi("Enes", 23);
  print(enes.kendiniTanit());

  Calisan hasan = Calisan("Hasan", 22, 3000);

  print(hasan.kendiniTanit());
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas) {}

  String kendiniTanit() {
    return "Benim adım $isim ve yaşım $yas";
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String isim, int yas, this.maas) : super(isim, yas) {}

  @override
  String kendiniTanit() {
    // TODO: implement kendiniTanit
    return super.kendiniTanit() + " maaşım $maas";
  }
}
