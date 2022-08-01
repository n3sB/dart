void main(List<String> args) {
  Ogrenci enes = Ogrenci(5, "Enes");
  var eness = Ogrenci.idSiz("Hasan");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "Ayşe");
  print(ayse.id);
}

int toplam() {
  return 3 + 5;
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("İsimlenidirilmiş kurucu çalıştı");
  }
  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
