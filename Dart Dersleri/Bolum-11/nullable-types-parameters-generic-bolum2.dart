void main(List<String> args) {
  List<String> stringListesi = ["emre", "hasan", "ali"];
  List<String>? nullOlabilecekStringListesi = []; // ? veya [] ile çözülür
  List<String?> nullOlabilecekStringleritutanListe = ["emre", null, "hasan"];
  // eleman null olacağı için içine koyarız.
  print('String listesi $stringListesi');
  print('null olabilecek liste $nullOlabilecekStringListesi');
  print(
      'null olabilecek Stringleri tutan liste $nullOlabilecekStringleritutanListe');
}
