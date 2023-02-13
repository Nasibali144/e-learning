import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/databases/students.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/models/student_model.dart';
import 'package:e_learning/pages/admin_pages/groups/admin_groups_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/status_print_service.dart';
import 'package:e_learning/services/utils.dart';

class InProcessGroups {
  InProcessGroups() {
    print('Database Groups:');
    StatusPrint(Status.inProgress);
    print('\nEnter Command:');
    print('0. Exit');
    print('1. Edit Group');
    print('2. Log Out');
    int page = io.number;
    if (page == 0) {
      Utils.exit();
    } else if (page == 1) {
      print('\t0. Do you want to add student?');
      print('\t1. Do you want to remove student?');
      print('\t2. Do you want change group status to completed group.');
      int number = io.number;
      if (number == 0) {
        List<Student> student = [];
        StatusPrint(Status.completed);
        print('Choose group number:');
        int number=io.number;

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
          print('1. Go Back');
          int number = io.number;
          if (number == 0) {
            studentsData();
            newStudent();
          }
          else {
            groups[number].students.addAll(student);
            print('You are succesfully added.');
            AdminGroupsPage();
          }
        }

        newStudent();
      }
      else if (number == 1) {
        StatusPrint(Status.completed);
        print('Choose group number:');
        int number=io.number;

        void studentsData() {
          print('Choose students from database:');
          for (int i = 0; i < students.length; i++) {
            print('\t$i. ${students[i].firstname}  ${students[i].lastname}');
          }
          int groupStudents = io.number;
          students.remove(students[groupStudents]);
        }

        void newStudent() {
          if (students.isNotEmpty) {
            print('\n0. Remove student');
          } else {
            print('There are not enough people left in the database!');
          }
          print('1. Go Back');
          int number = io.number;
          if (number == 0) {
            studentsData();
            newStudent();
          }
          else {
            print('You are succesfully removed.');
            AdminGroupsPage();
          }
        }

        newStudent();
      }
      else if (number == 2) {
        print(
            'Do you want to change group of status to completed group?\n\t0. Yes\n\t1. No');
        int groupStatus = io.number;
        if (groupStatus == 0) {
          print('Choose group number from the top.');
          int number = io.number;
          groups[number].status = Status.completed;
          print(
              'Succesfuly changed status of the group to completed.');
          AdminGroupsPage();
        } else {
          AdminGroupsPage();
        }
      }

      edit();
    } else if (page == 2) {
      IntroPage();
    } else {
      InProcessGroups();
    }
  }
}

void edit() {}