void main(List<String> args) {
  // int toplam = sayilariTopla(5, 4, 3);

  // int toplam = sayilariTopla(5, 4);
  int toplam = sayilariTopla(sayi2: 5, sayi1: 12, sayi3: 32);
  print("Toplam  $toplam");
  int hacim = hacimHesapla(boy: 5, yukseklik: 5, en: 3);
  print("Hacim $hacim");
}

//required parameter
// int sayilariTopla(int sayi1, int sayi2, int sayi3) {
//   return sayi1 + sayi2 + sayi3;
// }

//optional parameter
// int sayilariTopla(int sayi1, [int sayi2 = 0, int sayi3 = 0]) {
//   return sayi1 + sayi2 + sayi3;
// }

//optional named
int sayilariTopla({int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi1 + sayi2 + sayi3;
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
