// int ucSayiyiTopla({int ilk = 0, int ikinci = 0, int ucuncu = 0}) {
//   return ilk + ikinci + ucuncu;
// }
int ucSayiyiTopla(
    {required int ilk, required int ikinci, required int ucuncu}) {
  return ilk + ikinci + ucuncu;
}

void main(List<String> args) {
  final toplam = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 3);
  final toplam2 = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
}
