void main(List<String> args) {
  print("Programa Başladı");

  try {
    int sayi = 100 ~/ int.parse("source");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata çıktı ${e}");
  } finally {
    print("İşlem bitti");
  }

  print("Program Bitti");
}
