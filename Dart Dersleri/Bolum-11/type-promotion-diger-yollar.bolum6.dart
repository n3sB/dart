int karakterSayisiniBul(String metin) {
  if (metin == null) {
    throw Exception("Metin null");
    //return 0;
  } else {
    return metin.length;
  }
}

void main(List<String> args) {
  try {
    print(karakterSayisiniBul("Enes"));
  } catch (e) {
    print(e);
  }
}
