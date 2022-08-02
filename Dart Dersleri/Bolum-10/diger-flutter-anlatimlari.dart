import 'dart:async';

void main(List<String> args) async {
  print("Programl başladı");

  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });
  print("Programl bitti");

  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 1000000000; i++) {
      toplam += i;
    }
    //return toplam;
    throw Exception("Toplam hesaplanamadı");
  });

  // toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));
  try {
    int forSonuc = await toplam;
    print("******* $forSonuc");
  } catch (e) {
    print(e);
  }

  var f2 = Future.value("enes");
  //MOCK
  var f3 = Future.error("Hata ile biten Future");
  f3.catchError((onError) {
    print(onError);
  });
}
