import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/teacher_model.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/courses_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/pages/teacher_profile_page.dart';
import 'package:e_learning/services/auth_service.dart';
import '../../services/io_service.dart';
import '../../services/utils.dart';

Teacher currentTeacher = teachers.firstWhere((element) => element.uid == AuthService.user.uid);

class TeacherDashboard extends BaseScreen {
  @override
  void build() {
    super.build();
    print("Teacher Dashboard page\n\n");
    print("1. My course");
    print("2. Profile");
    print("3. Students");
    print('4. My groups');
    print('5. Courses');
    print("6. Log Out");
    int choose = io.number;

    switch (choose) {
      case 6:
        {
          print('1. Yes\n2. No');
          int logOutCommand = io.number;
          AuthService.logOut(logOutCommand, currentTeacher);
        }
        break;
      case 1:
        // TODO: my courses page
        print("The page is preparing!");
        break;
      case 2:
        TeacherProfile();
        break;
      case 3:
        printStudent();
        break;
      case 4:
        getGroup();
        break;
      case 5:
        CoursesPage();
        break;
      default:
        Utils.wrongState(build);
    }
  }

  void printStudent() {
    for (final i in groups) {
      if (i.teacher.uid == currentTeacher.uid) {
        print('This is ${i.name}');
        for (var q in i.students) {
          print('${q.firstname} ${q.lastname}');
        }
      }
    }
    print("0.Back");
    print("99.Exit");
    int choose = io.number;
    if (choose == 0) {
      TeacherDashboard();
    } else if (choose == 99) {
      Utils.exit();
    } else {
      TeacherDashboard();
    }
  }

  void getGroup() {
    for (final i in groups) {
      if (i.teacher.uid == currentTeacher.uid) {
        print(i.name);
      }
    }
    print("0.Back");
    print("99.Exit");
    int choose = io.number;
    if (choose == 0) {
      TeacherDashboard();
    } else if (choose == 99) {
      Utils.exit();
    } else {
      TeacherDashboard();
    }
  }
}
