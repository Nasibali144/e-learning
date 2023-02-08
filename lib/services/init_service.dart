import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/databases/students.dart';

class InitService {
  static initState() {
    _connectStudentToGroup();
  }

  static _connectStudentToGroup() {
    groupF1.students.addAll(students);
    for(final student in students) {
      student.groups.add(groupF1);
    }
  }
}