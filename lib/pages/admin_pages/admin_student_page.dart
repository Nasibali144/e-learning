import 'package:e_learning/pages/admin_pages/admin_dashboard_page.dart';
import 'package:e_learning/pages/base_page.dart';

import '../../databases/students.dart';
import '../../services/io_service.dart';

class AdminStudentsPage extends BaseScreen{

  @override
  void build() {
    super.build();
    print('1.show students\n 2.select students \n 3.admin dashboard');
    String select = io.text;
    switch(select){
      case '1':
        showStudents();
        break;
      case '2'  :
        selectStudents();
        break;
      case '3':
        AdminDashboardPage();
        break;
    }
  }

  showStudents(){
    for(int i = 0; i < students.length; i++){
      print("\t$i - student \n");
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
    build();
  }

  List list = [];
  selectStudents(){
    print('whould you want select students \n 1 -> yes \n 2 -> no' );
    String choose = io.text;
    if(choose == '1'){
      print('if you want to stop this selection just type anytime stop or STOP');
      while(true){
        String text = io.text;
        if(text == 'stop' || text == 'STOP'){
          break;
        }
        else if(int.parse(text) > students.length ){
          print('Wrong value');
          list.clear();
          build();
        }else {
          list.add(int.parse(text));
        }
      }
      if(list.isEmpty){
        build();
      }
      selectedStudents();
    }
    else if(choose == '2'){
      build();
    }
  }

  selectedStudents(){

    for(int i = 0; i < list.length; i++){
      int a = 0;
      a = list[i];
      print('you select $a.${students[a].firstname}');
    }

    print('do you want 1.edit or 2.delate students? ');
    String text = io.text;
    if(text == '1') {
      print('which do you want change from selected');

      for (int i = 0; i < list.length; i++) {
        int a = 0;
        a = list[i];
        print('$a.${students[a].firstname} \n');
      }
      String select = io.text;
      if (int.parse(select) > list.length && int.parse(select) < 0) {
        print('Wrong number');
        selectedStudents();
      }else{
        while(true) {
          print('1.name 2.surname 3.phone');
          String fields = io.text;
          switch (fields) {
            case '1':
              print('Enter new name \n');
              String name = io.text;
              int a = list[int.parse(select) - 1];
              students[a].firstname = name;
              break;
            case '2' :
              print('Enter new lastname');
              String lastName = io.text;
              int a = list[int.parse(select) - 1];
              students[a].lastname = lastName;
              break;
            case '3' :
              print('Enter new phone');
              String phone = io.text;
              int a = list[int.parse(select) - 1];
              students[a].phone = phone;
              break;
          }
          print('you want continue ? 1.yes 2.no');
          String continue1 = io.text;
          if(continue1 == '2'){
            AdminDashboardPage();
          }
        }
      }
    }
    else if(text == '2'){
      for(int i = 0; i < list.length; i++){
        int a = 0;
        a = list[i];
        print('you select $a.${students[a].firstname}');
      }
      print('Enter which one you want to delate ? \n');
      String text = io.text;
      int number = int.parse(text);
      students.removeAt(number);
      for(int i = 0; i < students.length; i++){
        print("\t$i - student \n");
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
    }
    build();
  }

}