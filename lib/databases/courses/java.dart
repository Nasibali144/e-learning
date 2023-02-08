import 'package:e_learning/models/course_model.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/models/modul_model.dart';

final modul1 = Modul(
    number: 1,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul2 = Modul(
    number: 2,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul3 = Modul(
    number: 3,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul4 = Modul(
    number: 4,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul5 = Modul(
    number: 5,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul6 = Modul(
    number: 6,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul7 = Modul(
    number: 7,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul8 = Modul(
    number: 8,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul9 = Modul(
    number: 9,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul10 = Modul(
    number: 10,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul11 = Modul(
    number: 11,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul12 = Modul(
    number: 12,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul13 = Modul(
    number: 13,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);
final modul14 = Modul(
    number: 14,
    name: "",
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 2000000,
    duration: 90);

List<Modul> moduls = [
  modul1,
  modul2,
  modul3,
  modul4,
  modul5,
  modul6,
  modul7,
  modul8,
  modul9,
  modul10,
  modul11,
  modul12,
  modul13,
  modul14,
];
final courseJava = Course(
    name: 'Java Backend',
    moduls: moduls,
    status: Status.upComing,
    teachers: [],
    description: 'This course for Java Backent',
    imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-icons.com%2Ficon%2Fjava-original-wordmark-logo%2F146459&psig=AOvVaw1Y-QUlInc7iCCo8pPfG9tm&ust=1675825943460000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCODijaS4gv0CFQAAAAAdAAAAABAE");