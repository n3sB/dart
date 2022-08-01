void main(List<String> args) {
  User user1 = User();
  NormalUser nU = NormalUser();

  User user2 = AdminUser();
  User user3 = SadeceOkuyabilenUser(); //upcasting yukarı evrim

  List<User> tumUserlar = [];
  tumUserlar.add(user3);
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(nU);

  test(user1);
  test(user2);
  test(user3);
  test(nU);

  nU.davetEt();

  SadeceOkuyabilenUser sOU = SadeceOkuyabilenUser();
  sOU.davetEt();
  sOU.adiniSoyle();
}

void test(User kullanici) {
  kullanici.girisYap(); // polimorfizim çok biçimlilik
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("User giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user davet etti");
  }

  @override
  void girisYap() {
    // TODO: implement girisYap
    print("Normal User giriş yaptı");
  }
}

class SadeceOkuyabilenUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    // TODO: implement girisYap
    print("SadeceOkuyabilenUser giriş yaptı");
  }

  @override
  void davetEt() {
    print("Sadece okuyan user davet etti");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayısı 20");
  }

  @override
  void girisYap() {
    // TODO: implement girisYap
    print("Admin User giriş yaptı");
  }
}
