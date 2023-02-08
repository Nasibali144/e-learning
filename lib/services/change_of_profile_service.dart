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
    print("in the  successful conversion of the ImageUrl");
    TeacherProfileSetting();
  }

  static void changeOfPhone() {
    print("enter a phone number :");
    io.console("+998");
    String phoneNumber = "+998${io.text}";
    if (phoneNumber.length == 13 ||
        phoneNumber.contains(RegExp(r'^\+\d{12}'))) {
      currentTeacher.phone = phoneNumber;
    } else {
      print("in the not successful conversion of the number");
      TeacherProfileSetting();
    }
    print("in the  successful conversion of the number");
    TeacherProfileSetting();
  }

  static void changeOfName() {
    io.console("Enter Firstname: ");
    String firstname = io.text;
    currentTeacher.firstname = firstname;
    print("in the  successful conversion of the firstname");
    TeacherProfileSetting();
  }

  static void changeOfLastname() {
    io.console(" Enter Lastname: ");
    String lastName = io.text;
    currentTeacher.lastname = lastName;
    print("in the  successful conversion of the lastname");
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
      print("in the  successful conversion of the password");
      TeacherProfileSetting();
    } else {
      print("in the  successful conversion of the password");
      ChangeOfTeacher.changeOfPassword();
    }
  }
}

class ChangeOfStudent {
  static void changeOfImage() {
    io.console("Image(url):");
    String image = io.text;
    currentStudent.imageUrl = image;
    print("in the  successful conversion of the ImageUrl");
    StudentProfileSetting();
  }

  static void changeOfName() {
    io.console("Enter Firstname: ");
    String firstname = io.text;
    currentStudent.firstname = firstname;
    print("in the  successful conversion of the firstname");
    StudentProfileSetting();
  }

  static void changeOfLastname() {
    io.console(" Enter Lastname: ");
    String lastName = io.text;
    currentStudent.lastname = lastName;
    print("in the  successful conversion of the lastname");
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
      print("in the  successful conversion of the password");
      StudentProfileSetting();
    } else {
      print("in the  successful conversion of the password");
      ChangeOfStudent.changeOfPassword();
    }
  }
}
