void main(List<String> args) {
  List<int> liste = [1, 2, 3];

  // liste.forEach((element) {
  //   print("element $element");
  // });

  liste.forEach(callBack);

  kendiForEachYapim(liste, (int deger, int index) {
    print("Değer $deger ve index $index");
  });
}

void kendiForEachYapim(List<int> liste, Function callback) {
  for (var i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}

void callBack(int element) {
  print("element $element");
}
