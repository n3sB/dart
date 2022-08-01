void main(List<String> args) {
  String isim = "Enes";
  String soyisim = "Baysal";
  int yas = 22;
  print(
      "Benim adım $isim $soyisim , yaşım $yas ve tüm ismimdeki karakter sayısı : ${(isim + soyisim).length}'dur.");

  int birinciKenar = 3;
  int ikinciKenar = 4;
  int ucuncuKenar = 5;
  print(
      "Birinci kenarı $birinciKenar, ikinci kenarı $ikinciKenar, üçüncü kenarı $ucuncuKenar olan üçgenin çevresi : ${birinciKenar + ikinciKenar + ucuncuKenar}'dir.");
}
