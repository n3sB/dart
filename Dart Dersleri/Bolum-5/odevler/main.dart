import 'dart:math';
import 'odevler.dart';
import 'ogrenci.dart';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(-4);

  print("Alan: " + c1.alanHesapla().toString());
  print("Çevre: " + c1.cevreHesapla().toString());

  Ogrenci ogr = Ogrenci();

  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());

  ogr.ogrenciListesiniDoldur(tumOgrenciler);

  for (Ogrenci oAnkiOgrenci in tumOgrenciler) {
    print(oAnkiOgrenci);
  }
  print("Tüm öğrencilerin ortalaması " +
      ogr.notOrtalamasiHesapla(tumOgrenciler).toString());
}
