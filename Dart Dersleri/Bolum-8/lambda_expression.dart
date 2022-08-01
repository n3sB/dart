void main(List<String> args) {
  //lambda expression isimlendirilmemiş fonksiyon demektir
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon1(5, 8);
  String isim = "enes";

  var f2 = (int s) => s * 2;

  var f3 = (int s2) {
    return s2 * 2;
  };

  print(f3(6));
}

//normal fonksiyon
void sayilaritopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
