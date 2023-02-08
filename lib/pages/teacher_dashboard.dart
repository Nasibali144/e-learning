import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/teacher_model.dart';
import 'package:e_learning/pages/base_page.dart';
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
    print("Teacher Dashboard");
    print("1.My Course");
    print("2. Profile");
    print("3.Students ");
    print("4.My Groups");
    print("5.Courses");
    print("6.Back");

    int num = io.number;

    switch (num) {
      case 0:
        {
          Utils.exit();
        }
        break;
      case 1:
        {
          // SignUpPage();
        }
        break;
      case 2:
        {
          TeacherProfile();
        }
        break;
      case 3:
        {
          // CoursesPage();
        }
        break;
      case 4:
        {
          // TeachersPage();
        }
        break;
      case 5:
        {
          // ContactsPage();
        }
        break;
      case 6:
        {
         IntroPage();
        }
        break;
      default:
        {
          Utils.wrongState(build);
        }
    }
  }
}
