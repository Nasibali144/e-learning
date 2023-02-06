import 'package:e_learning/models/payment_model.dart';
import 'package:e_learning/models/user_model.dart';

import 'group_model.dart';

class Student extends User {
  List<Group> groups;
  List<Payment> payments;
  double balance;

  Student({
    required this.balance,
    required this.groups,
    required this.payments,
    required super.firstname,
    required super.lastname,
    required super.age,
    required super.imageUrl,
    required super.birthdate,
    required super.gender,
    required super.phone,
    required super.password,
  });
}
