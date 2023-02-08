import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/teacher_dashboard.dart';
import 'package:e_learning/services/io_service.dart';

class ShowTeacherCourse extends BaseScreen {

  @override
  void build() {
    for(var group in groups) {
      if(group.teacher.uid == currentTeacher.uid) {
        print("${group.course.name} ${group.name} ");
      }
    }
    print("1.Back");
    int num=io.number;
    if(num==1){
      TeacherDashboard();
    }
  }
}