import 'package:e_learning/models/course_model.dart';
import 'package:e_learning/models/enums/status.dart';

class Payment {
  int id;
  Status status;
  Course course;
  double total;
  double price;

  static int countAllObject = 0;

  Payment({
    required this.status,
    required this.course,
    required this.total,
    required this.price,
  }) : id = ++countAllObject;
}
