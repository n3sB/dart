void main(List<String> args) {
  //lexical  variable scope
  var main = 1;

  void a() {
    var a = 2;

    void b() {
      var b = 3;
      print(a);
      print(main);
    }
  }

  var dondurulenFonksiyon = topla(3);
  var fonksiyon = dondurulenFonksiyon(4);
  print(fonksiyon);
}

Function topla(int eleman) {
  return (int deger) => eleman * deger;
}
