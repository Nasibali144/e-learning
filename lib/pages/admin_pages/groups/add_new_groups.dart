import 'package:e_learning/databases/courses/courses.dart';
import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/databases/students.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/models/group_model.dart';
import 'package:e_learning/models/student_model.dart';
import 'package:e_learning/pages/admin_pages/groups/admin_groups_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class AddNewGroups {
  AddNewGroups() {
    List<Student> student = [];

    print('Enter group name:');
    String groupName = io.text;
    if (students.isEmpty) {
      print('There are not enough people left in the database!');
    }
    else {
      void studentsData() {
        print('Choose students from database:');
        for (int i = 0; i < students.length; i++) {
          print('\t$i. ${students[i].firstname}  ${students[i].lastname}');
        }
        int groupStudents = io.number;
        student.add(students[groupStudents]);
        students.remove(students[groupStudents]);
      }

      void newStudent() {
        if (students.isNotEmpty) {
          print('\n0. Add new student');
        } else {
          print('There are not enough people left in the database!');
        }
        print('1. Continue');
        int number = io.number;
        if (number == 0) {
          studentsData();
          newStudent();
        }
      }

      newStudent();
    }

    print('Choose group teacher:');
    for (int i = 0; i < teachers.length; i++) {
      print('\t$i. ${teachers[i].firstname}  ${teachers[i].lastname}');
    }
    int groupTeacher = io.number;
    final teacher = teachers[groupTeacher];

    print('Choose group course:');
    for (int i = 0; i < courses.length; i++) {
      print('$i. ${courses[i].name}');
    }
    int groupCourse = io.number;
    final course = courses[groupCourse];

    final group = Group(
      name: groupName,
      startDate: DateTime.now().toString(),
      students: student,
      teacher: teacher,
      course: course,
    );

    print('Choose group status:\n\t0. Waiting Group\n\t1. In Process Groups');
    int groupStatus = io.number;
    group.status = groupStatus == 1 ? Status.inProgress : Status.upComing;
    groups.add(group);

    print('0. Exit');
    print('1. Admin Groups Page');
    print('2. Log Out\n');
    int page = io.number;
    if (page == 0) {
      Utils.exit();
    } else if (page == 1) {
      AdminGroupsPage();
    } else if (page == 2) {
      IntroPage();
    } else {
      AddNewGroups();
    }
  }
}