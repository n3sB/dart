void main(List<String> args) {
  try {
    Ogrenci enes = Ogrenci(-5);
    print(enes.yas);
  } on AgeException catch (e) {
    print(e.message);
  } finally {
    print("Program bitti");

    try {
      Ogrenci enes = Ogrenci(-5);
      print(enes.yas);
    } catch (e) {
      print(e);
    }
  }
}

class AgeException implements Exception {
  String message;

  AgeException({this.message = "AgeException"});

  @override
  String toString() {
    return "Hatanın toString methodu çalıştı";
  }
}

class Ogrenci {
  int yas;

  Ogrenci(this.yas) {
    if (yas < 0) {
      throw AgeException(message: "AgeException -Yaş negatif olamaz");
    } else {
      this.yas = yas;
    }
  }
}
