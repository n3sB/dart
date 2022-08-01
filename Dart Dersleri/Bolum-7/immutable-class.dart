void main(List<String> args) {
  const Student enes = Student(5, "enes");
  const Student enes2 = Student(5, "enes");

  if (enes == enes2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
