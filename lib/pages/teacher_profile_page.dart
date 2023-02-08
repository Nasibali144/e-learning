import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/teacher_profile_setting_page.dart';
import 'package:e_learning/pages/teacher_dashboard.dart';
import 'package:e_learning/services/io_service.dart';

class TeacherProfile extends BaseScreen{


  @override
  void build() {

    super.build();
    print("Profile");
    print("image(url) : ${currentTeacher.imageUrl}");
    print("Name : ${currentTeacher.firstname}");
    print("Surname : ${currentTeacher.lastname}");
    print("phone number: ${currentTeacher.phone}");
    print("\n");
    print("1.Setting:");
    print("2.Back:");
    int number=io.number;
 if(number==1){
   TeacherProfileSetting();
 }else{
   TeacherDashboard();
 }

  }

}