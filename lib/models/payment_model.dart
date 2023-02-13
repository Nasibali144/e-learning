import 'package:e_learning/models/course_model.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/models/modul_model.dart';

class Payment {
  int id;
  Status status;
  Course course;
  Modul modul;
  double total;
  double price;

  static int countAllObject = 0;

  Payment({
    required this.modul,
    required this.status,
    required this.course,
    required this.total,
    required this.price,
  }) : id = ++countAllObject;

  @override
  String toString() {
    return 'Payment id: $id, status: ${status.name}, course: ${course.name},modul: ${modul.name}, total: $total, price: $price';
  }
}