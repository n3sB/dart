import 'dart:io';

void main(List<String> args) {
  // double ortalama;
  // print("Vize Notunuzu giriniz: ");
  // double? vize = double.parse(stdin.readLineSync()!);
  // print("Final notunuzu giriniz: ");
  // double? fnl = double.parse(stdin.readLineSync()!);
  // ortalama = ((vize * 40) + (fnl * 60)) / 100;
  // print(
  //     "Vize notu ${vize.toInt()} ve final notu ${fnl.toInt()} olan öğrencinin ortalaması $ortalama dır");

  double? fiyat;
  double KDVliFiyat;
  print("Ürünün fiyatını giriniz: ");
  fiyat = double.parse(stdin.readLineSync()!);

  KDVliFiyat = fiyat + (fiyat * 18) / 100;

  print(
      "${fiyat.toInt()}'TL fiyatı olan ürünün KDV'li fiyatı $KDVliFiyat TL dir");
}
