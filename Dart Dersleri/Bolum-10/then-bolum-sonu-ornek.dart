import 'dart:async';

void main(List<String> args) {
  String username = "";
  idyeGoreKullaniciGetir(5).then((value) {
    print(value);
    usernameyeGoreKurslariGetir(value["username"]).then((List kurslarListesi) {
      print(kurslarListesi);
      String ilkKurs = kurslarListesi[0];
      kursunIlkYorumunuGetir(ilkKurs).then((value) => print(value));
    });
  });
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
