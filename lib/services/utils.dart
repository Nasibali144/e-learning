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

  static void exit() {
    print("Thank you for attention! Exit!");
  }

  static void wrongState(void Function() build) {
    print("Please enter the number shown!");
    build();
  }

  static void space() {
    print("\n" * 5);
  }

  static String hourToDuration(int hourTime, int delta, int amount) {
    int day = hourTime ~/ delta;
    int month = day ~/ amount;

    return "Duration $hourTime hour in $month month";
  }
}