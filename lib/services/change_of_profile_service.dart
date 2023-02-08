import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/pages/student_profile_setting.dart';
import 'package:e_learning/pages/teacher_profile_setting_page.dart';
import 'package:e_learning/pages/teacher_dashboard.dart';
import 'package:e_learning/services/io_service.dart';

class ChangeOfTeacher {
  static void changeOfImage() {
    io.console("Image(url):");
    String image = io.text;
    currentTeacher.imageUrl = image;
    print("In the  successful conversion of the ImageUrl");
    print("\n");
    TeacherProfileSetting();
  }

  static void changeOfPhone() {
    print("Enter a phone number :");
    io.console("+998");
    String phoneNumber = "+998${io.text}";
    if (phoneNumber.length == 13 ||
        phoneNumber.contains(RegExp(r'^\+\d{12}'))) {
      currentTeacher.phone = phoneNumber;
    } else {
      print("In the not successful conversion of the number");
      TeacherProfileSetting();
    }
    print("In the  successful conversion of the number");
    print("\n");

    TeacherProfileSetting();
  }

  static void changeOfName() {
    io.console("Enter Firstname: ");
    String firstname = io.text;
    currentTeacher.firstname = firstname;
    print("In the  successful conversion of the firstname");
    print("\n");

    TeacherProfileSetting();
  }

  static void changeOfLastname() {
    io.console(" Enter Lastname: ");
    String lastName = io.text;
    currentTeacher.lastname = lastName;
    print("In the  successful conversion of the lastname");
    print("\n");

    TeacherProfileSetting();
  }

  static void changeOfPassword() {
    io.console("Enter Password: ");
    String password1 = io.text;
    print("\n");
    io.console("repeat the password: ");
    String password2 = io.text;
    if (password1 == password2) {
      currentTeacher.password = password1;
      print("In the  successful conversion of the password");
      print("\n");

      TeacherProfileSetting();
    } else {
      print("In the  successful conversion of the password");
      ChangeOfTeacher.changeOfPassword();
    }
  }
}

class ChangeOfStudent {
  static void changeOfImage() {
    io.console("Image(url):");
    String image = io.text;
    currentStudent.imageUrl = image;
    print("In the  successful conversion of the ImageUrl");
    print("\n");

    StudentProfileSetting();
  }

  static void changeOfName() {
    io.console("Enter Firstname: ");
    String firstname = io.text;
    currentStudent.firstname = firstname;
    print("In the  successful conversion of the firstname");
    print("\n");

    StudentProfileSetting();
  }

  static void changeOfLastname() {
    io.console(" Enter Lastname: ");
    String lastName = io.text;
    currentStudent.lastname = lastName;
    print("In the  successful conversion of the lastname");
    print("\n");

    StudentProfileSetting();
  }

  static void changeOfPassword() {
    io.console("Enter Password: ");
    String password1 = io.text;
    print("\n");
    io.console("repeat the password: ");
    String password2 = io.text;
    if (password1 == password2) {
      currentStudent.password = password1;
      print("In the  successful conversion of the password");
      print("\n");

      StudentProfileSetting();
    } else {
      print("In the  successful conversion of the password");
      ChangeOfStudent.changeOfPassword();
    }
  }
}