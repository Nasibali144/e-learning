import 'package:e_learning/models/course_model.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/models/modul_model.dart';


final modul1 = Modul(
    number: 1,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
final modul2 = Modul(
    number: 2,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
final modul3 = Modul(
    number: 3,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
final modul4 = Modul(
    number: 4,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
final modul5 = Modul(
    number: 5,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
final modul6 = Modul(
    number: 6,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
final modul7 = Modul(
    number: 7,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
final modul8 = Modul(
    number: 8,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
final modul9 = Modul(
    number: 9,
    name: '',
    lessons: [for (int i = 1; i <= 10; i++) "$i - lesson"],
    price: 250000,
    duration: 80);
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
];
final courseFrontEnd = Course(
    name: 'FrontEnd',
    moduls: moduls,
    status: Status.inProgress,
    teachers: [],
    description: 'This course for Front End',
    imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-library.com%2Ficon%2Ffrontend-icon-12.html&psig=AOvVaw0ILVnsWJHFQwtnuRC7Rw8d&ust=1675827546662000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIDlwKC-gv0CFQAAAAAdAAAAABAE');