void main(List<String> args) {
  Map<String, dynamic> map = Map();

  map["id"] = 5;
  map["isim"] = "emre";
  map["renk"] = "yeşil";
  map["soyisim"] = "baysal";

  var yeniMap = Map.from({"deger": "yeni"});

  var MapFromEntries = Map.fromEntries(map.entries);

  print(MapFromEntries);

  var liste = [1, 2, 3, 4];
  var mapFromIterable = Map<String, String>.fromIterable(liste,
      key: (item) {
        return "$item";
      },
      value: (item) => "${item * 2}");
  print(mapFromIterable);

  map.update("id_yeni", (value) => value * 3, ifAbsent: () => 100);
  print(map);

  map.putIfAbsent("soyisim", () => "Baysal");
  print(map);
}
