import 'package:e_learning/models/course_model.dart';
import 'package:e_learning/models/user_model.dart';

class Teacher extends User {
  double salary;
  // TODO: connect group
  List<Course> courses;
  int experience; // inMonth

  Teacher({
    required this.salary,
    required this.experience,
    required this.courses,
    required super.age,
    required super.birthdate,
    required super.firstname,
    required super.gender,
    required super.imageUrl,
    required super.lastname,
    required super.password,
    required super.phone,
  });
}
