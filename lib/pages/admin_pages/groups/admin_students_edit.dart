import 'package:e_learning/pages/admin_pages/admin_student_page.dart';

import '../../../databases/students.dart';
import '../../../services/io_service.dart';

void studentsEdit(int id){
  print('1.name\n2.surname\n3.phone\n4.back');
  int command = io.number;
  switch (command) {
    case 1:
      print('Enter new name \n');
      String name = io.text;
      students[id].firstname = name;
      studentsEdit(id);
      break;
    case 2 :
      print('Enter new lastname');
      String lastName = io.text;
      students[id].lastname = lastName;
      studentsEdit(id);
      break;
    case 3 :
      print('Enter new phone');
      String phone = io.text;
      students[id].phone = phone;
      studentsEdit(id);
      break;
    case 4 :{
      AdminStudentsPage();
    }break;
    default:{
      AdminStudentsPage();
    }
  }
}