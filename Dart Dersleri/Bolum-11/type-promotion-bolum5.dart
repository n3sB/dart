void main(List<String> args) {
  String? mesaj;

  if (DateTime.now().hour < 12) {
    mesaj = "Günaydın";
  } else {
    mesaj = "İyi Akşamlar";
  }
  print(mesaj);
  print(mesaj.length);
}
