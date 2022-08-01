void main(List<String> args) {
  Person enes = Person(3, "enes");
  Ogrenci hasan = Ogrenci(3, "hasan", 10);
  Person ayse = Ogrenci(3, "ayşe", 8);
  var yunus = Person(3, "yunus");
  var ali = Ogrenci(3, "ali", 4);

  List<Person> tumOgrenciler = [enes, hasan, ayse, yunus, ali];

  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, " ", 0));

  var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());

  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  var listGenerate =
      List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index * 2));

  print(listeFrom);
  print(listeOf);

  var degistirilemezListe = List.unmodifiable([0, 1, 2]); //değiştirilemez lişte
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim) {
    @override
    // ignore: unused_element
    String toString() {
      return "id: $id ve isim $isim";
    }
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, this.alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return super.toString() + " ve alınan ders sayısı: $alinanDersSayisi";
  }
}
