class Yemek {
  late final String tanim;
  void setTanim(String tanim) {
    this.tanim = tanim;
  }
}

void main(List<String> args) {
  final yemegim = Yemek();
  yemegim.setTanim("Kuru Fasulye");
  print(yemegim.tanim);
}
