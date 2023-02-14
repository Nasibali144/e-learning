import 'package:e_learning/databases/students.dart';
import 'package:e_learning/pages/admin_pages/admin_dashboard_page.dart';
import 'package:e_learning/pages/admin_pages/admin_students.dart';
import 'package:e_learning/pages/base_page.dart';
import '../../services/io_service.dart';
import 'groups/admin_students_edit.dart';

class AdminStudentsPage extends BaseScreen {

  @override
  void build() {
    super.build();
    for(int i = 0; i < students.length; i++){
      print('${i+1}. ${students[i].firstname} ${students[i].lastname}');
    }
    print('${students.length+1}. Back');
    int select = io.number;
    if(select>0 && select<students.length){
      studentsInfo(select);
      print('1. Edit');
      print('2. Delete');
      print('3. Back');
      int command = io.number;

      if(command == 1){
        studentsEdit(select-1);
      }else if(command == 2){
        students.removeAt(select-1);
        AdminStudentsPage();
      }else{
        AdminStudentsPage();
      }

    }else{
      AdminDashboardPage();
    }
  }
}