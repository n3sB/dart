void main(List<String> args) {
  // For kaç kere dönmesini bildiğimiz zaman kullanırız.
  for (int i = 3; i < 10; i++) {
    print("Baysal");
  }

  List isimListesi = ["Enes", "Buğra", "Hüseyin"];

  for (String gecici in isimListesi) {
    print(gecici);
  }
  for (int i = 0; i < isimListesi.length; i++) {
    print(isimListesi[i]);
  }

  int sayac = 0;
  while (sayac < 3) {
    print("Okunan sayaç değeri : $sayac");
    sayac++;
  }

  distakiDongu:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("$i * $j = ${i * j}");

      if (i == 2) {
        break distakiDongu;
      }
    }
  }
}
