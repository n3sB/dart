import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<int> list = List.filled(5, 0);
  var liste2 = List<int>.filled(5, 0);
  List<int> sonList = [];

  Set<int> setlist = {};
  for (int i = 0; i < 5; i++) {
    list[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  sonList = [...list, ...liste2];
  for (var element in sonList) {
    setlist.add(element * element);
  }
  print(sonList);
  print(setlist);

  print(sonList.length);
  print(setlist.length);

  //Soru-5

  int girilenNot = 0;
  List<int> listNot = [];

  do {
    print("Lütfen bir sayı giriniz, çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      listNot.add(girilenNot);
    }
  } while (girilenNot > 0);
  print("Kaç tane not girildi: ${listNot.length}");

  double ortalama = listedekiElemanlarinToplaminiBul(listNot);
  print("Ortalama: $ortalama");
}

double listedekiElemanlarinToplaminiBul(List<int> list) {
  int toplam = 0;
  for (int i = 0; i < list.length; i++) {
    toplam += list[i];
  }
  return toplam / list.length - 1;
}
