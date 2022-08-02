void main(List<String> args) {
  print("Anne çocuğu ekmek almaya gönderir");
  print("Çocuk ekmek almak için evden çıkar");
  uzunSurenIslem().then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Eve gelir"));

  print("Peynir zeytin hazırlar");
  print("Kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Çocuk ekmekle eve gider";
  });
}
