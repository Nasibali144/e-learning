import 'package:e_learning/databases/courses/flutter.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/group_model.dart';

final groupF1 = Group(name: "Group Flutter F1", startDate: DateTime(2022, 12, 13).toString(), students: [], teacher: teacherSariqDev, course: courseFlutter);

final groups = [groupF1];