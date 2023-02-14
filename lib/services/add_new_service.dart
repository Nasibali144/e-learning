import 'package:e_learning/databases/courses/courses.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/course_model.dart';
import 'package:e_learning/models/enums/gender.dart';
import 'package:e_learning/models/teacher_model.dart';

import 'io_service.dart';

List list = [];

class NewTeacher {
  NewTeacher() {

    io.console("Enter firstname: ");
    String firsname = io.text;

    io.console("Enter lastname: ");
    String lastname = io.text;

    io.console("Enter age: ");
    int age = io.number;

    io.console("Enter birthdate: ");
    String birthdate = io.text;

    Gender gender1 = selectGendder()!;

    io.console("Enter experience: ");
    int experience = io.number;

    io.console("Enter salary: ");
    double salary = io.numberDouble;

    // Course course1 = selectCoourse()!;

    io.console("Enter phone: ");
    String phone = io.text;

    io.console("Enter password: ");
    String password = io.text;

    io.console("Enter imageUrl: ");
    String imageUrl = io.text;

    final addTeacher = Teacher(
      salary: salary,
      experience: experience,
      courses: [], //[course1],
      age: age,
      birthdate: birthdate,
      firstname: firsname,
      gender: gender1,
      imageUrl: imageUrl,
      lastname: lastname,
      password: password,
      phone: phone,
    );
    teachers.add(addTeacher);
    list.add(addTeacher);
  }

  // Course? selectCoourse() {
  //   Map<int, Course> kourses = {};
  //   int count = 0;
  //   for (var x in courses) {
  //     count++;
  //     print("$count : ${x.name}");
  //     kourses[count] = x;
  //   }
  //   io.console("Enter courses: ");
  //   int coursein = io.number;
  //   if (kourses.containsKey(coursein)) {
  //     return kourses[coursein];
  //
  //   } else {
  //     print("This is not Course !");
  //     selectCoourse();
  //   }
  //   return null;
  // }

  Gender? selectGendder() {
    Map<int, Gender> genderr = {};
    int count = 0;
    Gender.values.forEach((x) {
      count++;
      print("$count : ${x.name}");
      genderr[count] = x;
    });
    io.console("Enter gender: ");
    int genderein = io.number;
    if (genderr.containsKey(genderein)) {
      return genderr[genderein];
    } else {
      print("This is not !");
      selectGendder();
    }
    return null;
  }
  }
