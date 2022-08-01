void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  // honda.marka = "Honda";
  // honda.modelYili = 2020;
  // honda.otomatikMi = true;
  honda.bilgileriSoyle();

  var reno = Araba(1989, "Renault", false);

  reno.bilgileriSoyle();
  reno.yasHesapla();

  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  var citreon = Araba.markasizKurucuMetot(true, 2015);

  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "Suzuki");
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  // Araba() {
  //   print("Kurucu metot tetiklendi");
  // }
  Araba(int modelYili, String marka, bool otomatikMi) {
    this.marka = marka;
    this.modelYili = modelYili;
    this.otomatikMi = otomatikMi;
  }
  Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili);
  Araba.modelYiliOlmayanKurucuMetot(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

  void bilgileriSoyle() {
    print(
        "Arabanın model yılı: ${modelYili} markası: $marka otomatik mi: $otomatikMi");
  }

  void yasHesapla() {
    if (modelYili != null) {
      print("Arabanın yaşı = ${2021 - modelYili!}");
    } else {
      print("Model yılı olmadığında yaş hesaplanamadı");
    }
  }
}
