void main(List<String> args) {
  List<String> liste = [];

  liste.add("Enes");
  liste.add("baysal");
  liste.add("Gamze");
  liste.add("yılmaz");
  // liste.add(2);
  // liste.add(true);

  yazdir(liste);

  //List<E>   ==> Elementin kısaltılmış hali
  //Map<K>    ==> Key
  //Map<K, V> ==> Value
  //R         ==> Methodların return tipleri içindir
  //Ogrenci<T extends Insan>
}

yazdir(List list) {
  print(list[1].length);
}
