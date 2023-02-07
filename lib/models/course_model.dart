import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/models/teacher_model.dart';
import 'package:e_learning/services/utils.dart';

import 'modul_model.dart';

class Course {
  int id;
  String name;
  List<Modul> moduls;
  List<Teacher> teachers;
  Status status;
  String description;
  String imageUrl;
  double price;
  int duration;

  static int countAllObject = 0;

  Course({
    required this.name,
    required this.moduls,
    required this.teachers,
    required this.status,
    required this.description,
    required this.imageUrl,
  }) : id = ++countAllObject,
  price = moduls.fold(0, (previousValue, element) => element.price + previousValue),
  duration = moduls.fold(0, (previousValue, element) => element.duration + previousValue);

  @override
  String toString() {
    String result = "Course $name.\n\t$description \n\tCourse price: $price so'm\n\t${Utils.hourToDuration(duration, 4, 20)}";
    result += "\n\tModuls:";
    for(final modul in moduls) {
      result += "\n\t\t$modul";
    }

    return result;
  }
}