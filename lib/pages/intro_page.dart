import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/contacts_page.dart';
import 'package:e_learning/pages/courses_page.dart';
import 'package:e_learning/pages/sign_in_page.dart';
import 'package:e_learning/pages/sign_up_page.dart';
import 'package:e_learning/pages/teachers_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class IntroPage extends BaseScreen {

  @override
  void build() {
    super.build();
    print("Welcome to E-Learning Platform!");
    print("1. Sign Up");
    print("2. Sign In");
    print("3. Courses");
    print("4. Teachers");
    print("5. Contacts");
    print("0. Exit");

    int page = io.number;

    switch(page) {
      case 0: {
        Utils.exit();
      } break;
      case 1: {
        SignUpPage();
      } break;
      case 2: {
        SignInPage();
      } break;
      case 3: {
        CoursesPage();
      } break;
      case 4: {
        TeachersPage();
      } break;
      case 5: {
        ContactsPage();
      } break;
      default: {
        Utils.wrongState(build);
      }
    }
  }
}