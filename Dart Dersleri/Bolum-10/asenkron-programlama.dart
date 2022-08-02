void main(List<String> args) {
  print("Anne çocuğu ekmek almaya gönderir");
  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Çocuk eve gelir."));

  print("Peynir zeytin hazırlar");
  print("Kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  //Future<String> demek olası bir String döndürür demek
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "Çocuk ekmekle eve gider";
    // throw Exception("Bakkalda ekmek kalmamış.");
  });
  return sonuc;
}
