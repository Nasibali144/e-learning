import 'package:e_learning/models/enums/gender.dart';
import 'package:e_learning/services/utils.dart';

class User {
  String uid;
  String firstname;
  String lastname;
  int age;
  String imageUrl;
  String birthdate;
  Gender gender;
  String phone;
  String password;

  User({
    required this.firstname,
    required this.lastname,
    required this.age,
    required this.imageUrl,
    required this.birthdate,
    required this.gender,
    required this.phone,
    required this.password,
}) : uid = Utils.generateUID();
}