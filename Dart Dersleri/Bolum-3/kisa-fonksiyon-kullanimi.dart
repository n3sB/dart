void main(List<String> args) {
  sayilariTopla(2, 5);
  print(sayilariCikar(5, 2));
  print(sayilariCarp(5, 2));
  print(maxOlaniBul(5, 4));
}

sayilariTopla(int sayi1, int sayi2) {
  print("Toplam : ${sayi1 + sayi2}");
}

int sayilariCikar(int s1, int s2) {
  return s1 - s2;
}

int sayilariCarp(int s1, int s2) => s1 * s2;

int maxOlaniBul(int s1, int s2) => s1 > s2 ? s1 : s2;
