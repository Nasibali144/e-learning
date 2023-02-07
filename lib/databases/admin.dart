import 'package:e_learning/databases/courses/courses.dart';
import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/databases/students.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/models/admin_model.dart';
import 'package:e_learning/models/enums/gender.dart';

final admin = Admin(courses: courses,
    students: students,
    teachers: teachers,
    groups: groups,
    firstname: "Super User",
    lastname: "Admin",
    age: 6,
    imageUrl: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fkursi24.uz%2Fupload%2Fiblock%2Fda6%2Fda6265bc15431b3bb429507ef969129d.jpeg&imgrefurl=https%3A%2F%2Fkursi24.uz%2Fcentre%2Fpdp-academy&tbnid=Jg65VNK9mMnULM&vet=12ahUKEwiA5NKny4L9AhVMzyoKHYh7CA0QMygDegUIARC7AQ..i&docid=9vTE1P_x6osmWM&w=320&h=213&q=PDP&ved=2ahUKEwiA5NKny4L9AhVMzyoKHYh7CA0QMygDegUIARC7AQ",
    birthdate: DateTime(2017).toString(),
    gender: Gender.male,
    phone: "+998(78) 777-47-47",
    password: "Pdp@2323",
);