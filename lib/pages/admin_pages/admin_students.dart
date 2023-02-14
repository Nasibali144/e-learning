import 'package:e_learning/databases/students.dart';

  void studentsInfo(int id){
    int i = id - 1;
      print('Name : ${students[i].firstname}');
      print('surname : ${students[i].lastname}');
      print('Balance : ${students[i].balance}');
      print('Payments : ${students[i].payments}');
      print('groups : ${students[i].groups}');
      print('age : ${students[i].age}');
      print('gender : ${students[i].gender}');
      print('phone : ${students[i].phone}');
      print('password : ${students[i].password}\n');

  }


  void showStudents(){
    for(int i = 0; i < students.length; i++){
      print("${i+1}. ${students[i].firstname} ${students[i].lastname}");
    }
  }
