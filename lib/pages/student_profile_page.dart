import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/pages/student_profile_setting.dart';
import 'package:e_learning/services/io_service.dart';

class StudentProfile extends BaseScreen{


  @override
  void build() {
    super.build();
    print("Profile");
    print("Image(url) : ${currentStudent.imageUrl}");
    print("Name : ${currentStudent.firstname}");
    print("Surname : ${currentStudent.lastname}");
    print("Phone number: ${currentStudent.phone}");
    print("\n");
    print("1. Setting");
    print("2. Back");
    int number=io.number;
    if(number==1){
      StudentProfileSetting();
    }else{
      HomePage();
    }
  }
}