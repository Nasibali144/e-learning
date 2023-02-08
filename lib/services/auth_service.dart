import 'package:e_learning/databases/admin.dart';
import 'package:e_learning/databases/students.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/enums/gender.dart';
import 'package:e_learning/models/enums/page.dart';
import 'package:e_learning/models/student_model.dart';
import 'package:e_learning/models/teacher_model.dart';
import 'package:e_learning/models/user_model.dart';
import 'package:e_learning/pages/admin_pages/admin_dashboard_page.dart';
import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/pages/teacher_dashboard.dart';

class AuthService {

  static late User user;

  static bool signUp({
    required String firstname,
    required String lastname,
    required int age,
    required String birthdate,
    required String phone,
    required String image,
    required Gender gender,
    required String password,
  }) {
    // I. validation
    if(age < 0 || age > 150) {
      return false;
    }

    if(firstname.isEmpty || lastname.isEmpty) {
      return false;
    }
    final regex = RegExp(r"(\d{2})\.(\d{2})\.(\d{4})");
    final match = regex.firstMatch(birthdate);
    int day = int.tryParse(match?.group(1) ?? '') ?? 0;
    int month = int.tryParse(match?.group(2) ?? '') ?? 0;
    int year = int.tryParse(match?.group(3) ?? '') ?? 0;
    if(day <= 0 || month <= 0 || year <= 0 || day > 31 || month > 12) {
      return false;
    }

    if(phone.length != 13 || !phone.contains(RegExp(r'^\+\d{12}'))) {
      return false;
    }

    if(password.length < 8) {
      return false;
    }

    final student = Student(balance: 0, groups: [], payments: [], firstname: firstname, lastname: lastname, age: age, imageUrl: image, birthdate: birthdate, gender: gender, phone: phone, password: password);
    user = student;
    students.add(student);
    return true;
  }

  static Page signIn({required String phone, required String password}) {
    if(admin.phone == phone && admin.password == password) {
      user = admin;
      return Page.adminDashboard;
    }

    for(int i = 0; i < teachers.length; i++) {
      if(teachers[i].phone == phone && teachers[i].password == password) {
        user = teachers[i];
        return Page.teacherDashboard;
      }
    }

    for(int i = 0; i < students.length; i++) {
      if(students[i].phone == phone && students[i].password == password) {
        user = students[i];
        return Page.home;
      }
    }

    return Page.signIn;
  }

  static void logOut(int command, User user){
    if(user is Student){
      if(command==1){
        IntroPage();
      }else {
        HomePage();
      }
    }else if(user is Teacher){
      if(command==1){
        IntroPage();
      }else {
        TeacherDashboard();
      }
    } else {
      if(command==1){
        IntroPage();
      }else {
        AdminDashboardPage();
      }
    }
  }
}