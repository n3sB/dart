void main(List<String> args) {
  print("İnternetten kişi verisi getirilecek");
  kisiliyleIlgiliIslemler();
  print("Başka işlemler yapılacak");
  print("İşlem Bitti");
}

void kisiliyleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Kişi adı : Emre ve id:100";
  });
}
