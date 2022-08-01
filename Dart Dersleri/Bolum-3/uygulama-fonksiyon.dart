void main(List<String> args) {
  int toplam = ciftToplama(25);
  print(toplam);
  double carpim = daireAlanHesaplama(5);
  print(carpim);
  ucgenCevreHesaplama(firstSide: 5, secondSide: 4, thirdSide: 5);
}

int ciftToplama(int sayi) {
  int toplam = 0;
  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam += i;
    } else {
      toplam;
    }
  }
  return toplam;
}

double daireAlanHesaplama(double radius, [double pi = 3.14]) {
  return pi * radius * radius;
}

void ucgenCevreHesaplama(
    {int firstSide = 1, int secondSide = 1, int thirdSide = 1}) {
  if (firstSide == secondSide && firstSide == thirdSide) {
    print("Eşkenar bir Üçgen");
  } else if (firstSide == secondSide ||
      firstSide == thirdSide ||
      secondSide == thirdSide) {
    print("İkizkenar bir Üçgen");
  } else {
    print("Çeşitkenar bir Üçgen");
  }
}
