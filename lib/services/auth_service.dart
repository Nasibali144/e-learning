import 'package:e_learning/databases/admin.dart';
import 'package:e_learning/databases/students.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/enums/gender.dart';
import 'package:e_learning/models/enums/page.dart';
import 'package:e_learning/models/student_model.dart';

class AuthService {
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
    students.add(student);
    return true;
  }

  static Page signIn({required String phone, required String password}) {
    if(admin.phone == phone && admin.password == password) {
      return Page.adminDashboard;
    }

    for(int i = 0; i < teachers.length; i++) {
      if(teachers[i].phone == phone && teachers[i].password == password) {
        return Page.teacherDashboard;
      }
    }

    for(int i = 0; i < students.length; i++) {
      if(students[i].phone == phone && students[i].password == password) {
        return Page.home;
      }
    }

    return Page.signIn;
  }
}