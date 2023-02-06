import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/models/teacher_model.dart';

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
}