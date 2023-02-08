import 'package:e_learning/databases/courses/flutter.dart';
import 'package:e_learning/databases/courses/front_end.dart';
import 'package:e_learning/databases/courses/java.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/group_model.dart';

final groupF1 = Group(
    name: "Group Flutter F1",
    startDate: DateTime(2022, 12, 13).toString(),
    students: [],
    teacher: teacherSariqDev,
    course: courseFlutter);
final groupF2 = Group(
    name: "Group Flutter F2",
    startDate: DateTime(2022, 12, 13).toString(),
    students: [],
    teacher: teacherSariqDev,
    course: courseFlutter);
final groupF3 = Group(
    name: "Group Flutter F3",
    startDate: DateTime(2022, 12, 13).toString(),
    students: [],
    teacher: teacherSariqDev,
    course: courseFlutter);
final groupF4 = Group(
    name: "Group Java J1",
    startDate: DateTime(2022, 12, 13).toString(),
    students: [],
    teacher: teacherSariqDev,
    course: courseJava);
final groupF5 = Group(
    name: "Group FrontEnd F1",
    startDate: DateTime(2022, 12, 13).toString(),
    students: [],
    teacher: teacherAzam,
    course: courseFrontEnd);

final groups = [groupF1, groupF2, groupF3, groupF4, groupF5];
