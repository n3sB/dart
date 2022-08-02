int? nullOlabilirAmaDegil = 1;
void main(List<String> args) {
  List<int?> nullDegerTutanListe = [2, 3, null];

  int a = nullOlabilirAmaDegil!;
  int b = nullDegerTutanListe.first!;
  int c = nulldDondurebilirAmaDondurmeyecek()!.abs();
}

int? nulldDondurebilirAmaDondurmeyecek() {
  return 5;
}
