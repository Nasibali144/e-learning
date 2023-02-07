class Modul {
  int id;
  int number;
  String name;
  List<String> lessons;
  double price;
  int duration; // inHour
  static int countAllObject = 0;

  Modul({
    required this.number,
    required this.name,
    required this.lessons,
    required this.price,
    required this.duration,
  }) : id = ++countAllObject;

  @override
  String toString() {
    String result = "$number. $name.\n";
    for(final lesson in lessons) {
      result += "$lesson \n";
    }
    return result;
  }
}
