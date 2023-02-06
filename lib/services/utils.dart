import 'dart:math';

class Utils {
  static String generateUID() {
    List<String> uid = [];

    for(int i = 1; i <= 10; i++) {
      String letterOne = String.fromCharCode(97 + Random().nextInt(25));
      String letterTwo = String.fromCharCode(97 + Random().nextInt(25));
      String digit = String.fromCharCode(48 + Random().nextInt(9));
      uid.addAll([letterOne, digit, letterTwo]);
    }

    uid.shuffle();
    return uid.join();
  }
}