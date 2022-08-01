void main(List<String> args) {
  Person enes = Person(3, "enes");
  Ogrenci hasan = Ogrenci(3, "hasan", 10);
  Person ayse = Ogrenci(3, "ayşe", 8);
  var yunus = Person(3, "yunus");
  var ali = Ogrenci(3, "ali", 4);

  List<Person> tumOgrenciler = [enes, hasan, ayse, yunus, ali];

  tumOgrenciler.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else {
      return 0;
    }
  });
  print(tumOgrenciler);

  var mapItarable = tumOgrenciler.map((Person e) => "${e.isim}");
  print(mapItarable);
  var mapList = tumOgrenciler.map((Person e) => "${e.isim}").toList();
  print(mapList);
  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([enes, ayse]);
  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 3);
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap);
  print(yeniMap[1]!.id);

  var bulunan = tumOgrenciler.every((element) => element.isim.length == 1);
  print(bulunan);
  // var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, " ", 0));

  // var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());

  // var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  // var listGenerate =
  //     List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index * 2));

  // print(listeFrom);
  // print(listeOf);

  // var degistirilemezListe = List.unmodifiable([0, 1, 2]); //değiştirilemez liste
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim) {}
  @override
  String toString() {
    return "id: $id ve isim $isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, this.alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return super.toString() + " ve alınan ders sayısı: $alinanDersSayisi\n";
  }
}
