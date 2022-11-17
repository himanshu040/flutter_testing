import "package:encrypt/encrypt.dart"; //pubspec.yaml->encrypt: ^4.1.0

class EncryptData {
//for AES Algorithms


  static Encrypted? encrypted;

  static var decrypted;

  static String encryptAES(plainText) {
    String key = "37ZA3D89B64C115122DF9178C8R99c1x";
    String iv = "213A26DBB4A358C5";
    final key1 = Key.fromUtf8(key);
    final iv1 = IV.fromUtf8(iv);
    final encrypter = Encrypter(AES(key1, mode: AESMode.cbc));
    //print("Dart Output…!!!");
    //print("IV: " + iv1.bytes.toString());
    //print("Key: " + key1.bytes.toString());
     encrypted = encrypter.encrypt(plainText, iv: iv1);
    //print("Encrypted: " + encrypted.bytes.toString());
    //print("Base64: " + encrypted.base64);
    print(encrypted!.base64);
    return encrypted!.base64;
  }

  static String decryptAES(plainText) {
    String key = "37ZA3D89B64C115122DF9178C8R99c1x";
    String iv = "213A26DBB4A358C5";
    if (encrypted == "") {
      return "";
    } else 
    {
      final key1 = Key.fromUtf8(key);
      final iv1 = IV.fromUtf8(iv);
      final encrypter = Encrypter(AES(key1, mode: AESMode.cbc));
       decrypted = encrypter.decrypt(encrypted!, iv: iv1);
      print("Decrypted: " + decrypted);
      return decrypted;
    }
  }
}
