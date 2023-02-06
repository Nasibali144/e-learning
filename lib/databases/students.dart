import 'package:e_learning/models/enums/gender.dart';
import 'package:e_learning/models/student_model.dart';

final student1 = Student(balance: 1000000, groups: [], payments: [], firstname: "Eshmat", lastname: "Toshmatov", age: 18, imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fuser-avatar&psig=AOvVaw2y3N3DOjfPb_Xk67KVFuxa&ust=1675756285167000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJDG2OK0gP0CFQAAAAAdAAAAABAE", birthdate: DateTime(2005, 2, 6).toString(), gender: Gender.male, phone: "+99897 777 77 77", password: "student1");
final student2 = Student(balance: 1000000, groups: [], payments: [], firstname: "Toshmat", lastname: "Eshmatov", age: 18, imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fuser-avatar&psig=AOvVaw2y3N3DOjfPb_Xk67KVFuxa&ust=1675756285167000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJDG2OK0gP0CFQAAAAAdAAAAABAE", birthdate: DateTime(2005, 2, 6).toString(), gender: Gender.male, phone: "+99890 123 45 67", password: "student2");

final students = [
  student1,
  student2,
];