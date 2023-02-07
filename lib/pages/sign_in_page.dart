import 'package:e_learning/databases/admin.dart';
import 'package:e_learning/databases/students.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/enums/page.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/services/auth_service.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/navigate_service.dart';

class SignInPage extends BaseScreen {
  @override
  void build() {
    super.build();
    print("Sign In:");
    io.console("Phone: +998");
    String phone = "+998${io.text}";

    io.console("Password: ");
    String password = io.text;

    Page page = AuthService.signIn(phone: phone, password: password);
    NavigateService.navigation(page);
  }
}