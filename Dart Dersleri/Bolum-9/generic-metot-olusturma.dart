void main(List<String> args) {
  double intOrtalama = ortalamaBul<int>(5, 11);
  double doubleOrtalama = ortalamaBul<double>(5, 11);
  print("Ortalama $doubleOrtalama");
  print(intOrtalama);
}

double ortalamaBul<T extends num>(s1, s2) {
  return (s1 + s2) / 2;
}
