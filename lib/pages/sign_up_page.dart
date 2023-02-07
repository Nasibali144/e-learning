import 'package:e_learning/models/enums/gender.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/auth_service.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class SignUpPage extends BaseScreen {
  @override
  void build() {
    super.build();
    print("Sign Up");

    io.console("Firstname: ");
    String firstname = io.text;

    io.console("Lastname: ");
    String lastname = io.text;

    io.console("Age: ");
    int age = io.number;

    io.console("Birthdate (dd.mm.yyyy): ");
    String birthdate = io.text;

    io.console("Phone: +998");
    String phone = "+998${io.text}";

    io.console("Gender: \n\t1. Male\n\t2. Female\n");
    int index = io.number;
    Gender gender = index == 2 ? Gender.female : Gender.male;

    io.console("Image (url): ");
    String image = io.text;

    io.console("Password: ");
    String password = io.text;

    bool result = AuthService.signUp(firstname: firstname, lastname: lastname, age: age, birthdate: birthdate, phone: phone, image: image, gender: gender, password: password);
    if(result) {
      print("Successfully Registration!");
      HomePage();
    } else {
      print("Please enter valid data");
      print("\n0. Exit");
      print("1. Main Page");
      print("2. Continue");

      int index = io.number;

      if(index == 1) {
        IntroPage();
      } else if (index == 2) {
        build();
      } else {
        Utils.exit();
      }
    }
  }
}