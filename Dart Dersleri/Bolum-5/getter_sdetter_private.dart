import 'musteri.dart';
import 'veritabani_islemleri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(951);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 432;

  Musteri m2 = Musteri(123);
  m2.bilgileriYazdir();

  VeritabaniIslemleri db = VeritabaniIslemleri();
  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameandPassword("enes2", "123");
  db.baglan();

  bool sonuc = db.baglan();
  if (sonuc == true) {
    print("Bağlantı başarılı");
  } else {
    print("Bağlantı başarısız");
  }
}
