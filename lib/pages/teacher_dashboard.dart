import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/teacher_model.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/courses_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/pages/teacher_group_student_page.dart';
import 'package:e_learning/pages/teacher_my_cource_page.dart';
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
        ShowTeacherCourse();
        break;
      case 2:
        TeacherProfile();
        break;
      case 3:
        StudentInfo();
        break;
      case 4:
        PrintGroup();
        break;
      case 5:
        CoursesPage(currentTeacher);
        break;
      default:
        Utils.wrongState(build);
    }
  }
}
