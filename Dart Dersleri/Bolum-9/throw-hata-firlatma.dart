import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-1);
    print("Değer: ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int sayi) {
  if (sayi < 0) {
    throw FormatException("Sayı negatif olamaz");
  } else {
    return sqrt(sayi);
  }
}
