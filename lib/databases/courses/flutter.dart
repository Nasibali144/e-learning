import 'package:e_learning/models/course_model.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/models/modul_model.dart';

final modul1 = Modul(
    number: 1,
    name: "Basic Dart",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);
final modul2 = Modul(
    number: 2,
    name: "Intermediate Dart",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);
final modul3 = Modul(
    number: 3,
    name: "Advanced Dart",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);
final modul4 = Modul(
    number: 4,
    name: "Basic Flutter",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);
final modul5 = Modul(
    number: 5,
    name: "Intermediate Flutter",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);
final modul6 = Modul(
    number: 6,
    name: "Advanced Flutter",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);
final modul7 = Modul(
    number: 7,
    name: "Necessary Technology",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);
final modul8 = Modul(
    number: 8,
    name: "DSA",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);
final modul9 = Modul(
    number: 9,
    name: "Practise",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2850000,
    duration: 80);

List<Modul> modules = [
  modul1,
  modul2,
  modul3,
  modul4,
  modul5,
  modul6,
  modul7,
  modul8,
  modul9,
];

final courseFlutter = Course(
  name: "Flutter",
  moduls: modules,
  teachers: [],
  status: Status.completed,
  description: "This course for mobile development!",
  imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fbranditechture.agency%2Fbrand-logos%2Fdownload%2Fflutter%2F&psig=AOvVaw24O6ZTV_DKXTwx6CSghkcj&ust=1675756012446000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJiNh-GzgP0CFQAAAAAdAAAAABAE",
);
