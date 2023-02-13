import 'package:e_learning/databases/students.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/student_model.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/courses_page.dart';
import 'package:e_learning/pages/payment_page.dart';
import 'package:e_learning/pages/student_profile_page.dart';
import 'package:e_learning/services/auth_service.dart';
import 'package:e_learning/services/balance_service.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

Student currentStudent = students.firstWhere((element) => element.uid == AuthService.user.uid);

class HomePage extends BaseScreen {

  @override
  void build() {
    super.build();
    print("Home Page!");
    print("1. My Course");
    print("2. Balance");
    print("3. Payment");
    print("4. My Group");
    print("5. Teachers");
    print("6. Courses");
    print("7. My Profile");
    print("8. Log out");

    int command = io.number;

    switch (command) {
      case 1:
        {
          //TODO:My Course
          print('My Course:');

          for (int i = 0; i < currentStudent.groups.length; i++) {
            print('${i + 1}. ${currentStudent.groups[i].course}');
          }

          print("${currentStudent.groups.length}. Back");
          int command = io.number;

          if (command == 1) {
            HomePage();
          } else {
            print('Wrong Command!');
            HomePage();
          }
        }
        break;
      case 2:
        {
          Balance();
        }
        break;
      case 3:
        {
          PaymentPage();
        }
        break;
      case 4:
        {
          //TODO:My Group
          print('My Group:');

          for (int i = 0; i < currentStudent.groups.length; i++) {
            print('${i + 1}. ${currentStudent.groups[i]}');
          }

          print("${currentStudent.groups.length}. Back");
          int command = io.number;

          if (command == 1) {
            HomePage();
          } else {
            print('Wrong Command!');
            HomePage();
          }
        }
        break;
      case 5:
        {
          //TODO:Teachers
          print('\nTeachers:');

          for (int i = 0; i < teachers.length; i++) {
            print('${i + 1}. ${teachers[i]}');
          }

          print('\n${teachers.length + 1}. Back');

          int command = io.number;

          if (command == teachers.length + 1) {
            HomePage();
          } else {
            print('Wrong command!');
            HomePage();
          }
        }
        break;
      case 6:
        {
          CoursesPage(currentStudent);
        }
        break;
      case 7:
        {
          StudentProfile();
        }
        break;
      case 8:
        {
          print('1. Yes\n2. No');
          int logOutCommand = io.number;
          AuthService.logOut(logOutCommand, currentStudent);
        }
        break;
      default:
        {
          Utils.wrongState(build);
        }
    }
  }
}
