void main(List<String> args) {
  int sayi1 = 7;
  int sayi2 = 5;
  int kucukSayi;

  sayi2 < sayi1 ? kucukSayi = sayi2 : kucukSayi = sayi1;

  kucukSayi = sayi2 < sayi1 ? sayi2 : sayi1;

  print("Küçüak sayı : $kucukSayi");

  String? ad = null;
  String? soyadi = "Baysal";
  String? mesaj;

  mesaj = ad ?? soyadi;

  print("Merhaba $mesaj");
}
