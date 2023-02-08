import 'package:e_learning/models/enums/status.dart';

import 'course_model.dart';
import 'student_model.dart';
import 'teacher_model.dart';

class Group {
  int id;
  String name;
  int studentCount;
  List<Student> students;
  Teacher teacher;
  String createdAt;
  String startDate;
  Course course;
  Status status;
  int? modulNumber;

  static int countAllObject = 0;

  Group({
    required this.name,
    required this.startDate,
    required this.students,
    required this.teacher,
    required this.course,
  })  : id = ++countAllObject,
        createdAt = DateTime.now().toString(),
        studentCount = students.length,
        status = Status.inProgress;
}
