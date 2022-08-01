void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();
  m1.topla();
  m1.topla();
  m1.topla();
  m1.topla();
  m1.topla();
  Matematik m2 = Matematik(50, 20);

  m1.topla();
  m1.topla();
  m1.topla();
  m1.topla();
  m1.topla();
  m1.topla();

  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();
  print("Toplam işlem sayısı ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  //instance variable
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;
  //class variable, sınıf değişkeni o yüzden sınıfIsmi.deger ile erişilebilir
  static double PI = 3.14;

  static void sinifAdiniSoyle() {
    print("Ben Matematik sınıfıyım");
  }

  Matematik(this.birinciSayi, this.ikinciSayi) {}

  void topla() {
    toplamIslemSayisi++;
    print("$birinciSayi + $ikinciSayi = ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    if (birinciSayi < ikinciSayi) {
      print("$ikinciSayi - $birinciSayi = ${ikinciSayi - birinciSayi}");
    } else {
      print("$birinciSayi - $ikinciSayi = ${birinciSayi - ikinciSayi}");
    }
  }
}
