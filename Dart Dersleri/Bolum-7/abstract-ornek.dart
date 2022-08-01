void main(List<String> args) {
  Veritabani db = OracleDB();
  db.userSave();
  db.usurDelete();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void usurDelete();
}

class OracleDB extends Veritabani {
  @override
  void userSave() {
    print("oracle Dbye user kaydedildi.");
  }

  @override
  void userUpdate() {
    print("oracle Dbde user güncellendi.");
  }

  @override
  void usurDelete() {
    print("oracle Dbden user silindi.");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userSave() {
    print("Firebase Dbye user kaydedildi.");
  }

  @override
  void userUpdate() {
    print("Firebase Dbde user güncellendi.");
  }

  @override
  void usurDelete() {
    print("Firebase Dbden user silindi.");
  }
}
