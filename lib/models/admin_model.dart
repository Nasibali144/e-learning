import 'package:e_learning/models/group_model.dart';
import 'package:e_learning/models/student_model.dart';
import 'package:e_learning/models/teacher_model.dart';
import 'package:e_learning/models/user_model.dart';
import 'course_model.dart';

class Admin extends User {
  List<Course> courses;
  List<Student> students;
  List<Teacher> teachers;
  List<Group> groups;

  Admin({
    required this.courses,
    required this.students,
    required this.teachers,
    required this.groups,
    required super.firstname,
    required super.lastname,
    required super.age,
    required super.imageUrl,
    required super.birthdate,
    required super.gender,
    required super.phone,
    required super.password,
  });
}
