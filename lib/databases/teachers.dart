import 'package:e_learning/models/enums/gender.dart';
import 'package:e_learning/models/teacher_model.dart';

final teacherAzam = Teacher(
    salary: 2500,
    experience: 6,
    courses: [],
    age: 27,
    birthdate: DateTime(1995, 02, 7).toString(),
    firstname: "Azam",
    gender: Gender.male,
    imageUrl:
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fyt3.googleusercontent.com%2Fytc%2FAL5GRJXQBawXA6icBn-TCVe9TVfUA3CyI-ukdcyHqxc%3Ds900-c-k-c0x00ffffff-no-rj&imgrefurl=https%3A%2F%2Fwww.youtube.com%2Fchannel%2FUCcmh4HUS-Ei8MfqkH8-up8A&tbnid=Q2NjNj6fdZhqUM&vet=12ahUKEwjAzZOUyIL9AhXWDBAIHdBqC1cQMygAegUIARCbAQ..i&docid=FktG8XGV-XDZXM&w=900&h=900&q=teacher%20azam&ved=2ahUKEwjAzZOUyIL9AhXWDBAIHdBqC1cQMygAegUIARCbAQ",
    lastname: "Qahramoniy",
    password: "qwert1234",
    phone: "+9989912345678",
);

final teacherSariqDev = Teacher(
  salary: 5000,
  experience: 10,
  courses: [],
  age: 35,
  birthdate: DateTime(1987, 02, 7).toString(),
  firstname: "Anvar",
  gender: Gender.male,
  imageUrl:
  "https://www.google.com/imgres?imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D100063634925841&imgrefurl=https%3A%2F%2Fwww.facebook.com%2Fsariqdev%2F&tbnid=19szy1HxxdRxNM&vet=12ahUKEwjJw5rdyIL9AhWGuyoKHTntBRkQMygBegQIARBc..i&docid=EgzPYcyBsAyg4M&w=578&h=578&q=sariq%20dev&ved=2ahUKEwjJw5rdyIL9AhWGuyoKHTntBRkQMygBegQIARBc",
  lastname: "Nazrullayev",
  password: "qwert1234",
  phone: "+998998765432",
);

final teachers = [
  teacherAzam,
  teacherSariqDev,
];
