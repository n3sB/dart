void main(List<String> args) {
  String isim = "Enes";
  String soyIsim = "Baysal";

  print(isim + " " + soyIsim);

  print("$isim $soyIsim");

  print("soyadım olan $soyIsim'da bulunan karakter sayısı: " +
      soyIsim.length.toString() +
      " dır. ");
  print("karakter sayısı ${soyIsim.length}");

  double en = 10;
  double boy = 12;

  print(
      "eni ${en.toInt()} boyu ${boy.toInt()} olan dikdörtgenin alanı : ${(en * boy).toInt()} dir");
}
