import 'package:e_learning/models/enums/page.dart';
import 'package:e_learning/pages/admin_pages/admin_dashboard_page.dart';
import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/pages/sign_in_page.dart';
import 'package:e_learning/pages/sign_up_page.dart';
import 'package:e_learning/pages/teacher_dashboard.dart';

class NavigateService {
  static void navigation(Page page) {
    switch(page) {
      case Page.adminDashboard: {
        AdminDashboardPage();
      } break;
      case Page.teacherDashboard: {
        TeacherDashboard();
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