import 'package:e_learning/models/enums/page.dart';
import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/pages/sign_in_page.dart';
import 'package:e_learning/pages/sign_up_page.dart';

class NavigateService {
  static void navigation(Page page) {
    switch(page) {
      case Page.adminDashboard: {
        // TODO: AdminDashboard();
        print("AdminDashboard");
      } break;
      case Page.teacherDashboard: {
        // TODO: TeacherDashboard();
        print("TeacherDashboard");
      } break;
      case Page.home: {
        HomePage();
      } break;
      case Page.intro: {
        IntroPage();
      } break;
      case Page.signIn: {
        SignInPage();
      } break;
      case Page.signUp: {
        SignUpPage();
      } break;
    }
  }
}