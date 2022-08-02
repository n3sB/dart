void main(List<String> args) async {
  Map gelenUser = await idyeGoreKullaniciGetir(5);
  List kurslarListesi =
      await usernameyeGoreKurslariGetir(gelenUser["username"]);
  String yorum = await kursunIlkYorumunuGetir(kurslarListesi[0]);
  print(yorum);
}

Future<String> kursunIlkYorumunuGetir(String kursadi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs mükemmel";
  });
}

Future<List<String>> usernameyeGoreKurslariGetir(String username) {
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 5), () {
    return ["Flutter", "kotlin", "javascript"];
  });
}

Future<Map<String, dynamic>> idyeGoreKullaniciGetir(int id) {
  print("$id idli kullanıcı getiriliyor.");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'enesbaysal', 'id': id};
  });
}
