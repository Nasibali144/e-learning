import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/teacher_profile_page.dart';
import 'package:e_learning/services/change_of_profile_service.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class TeacherProfileSetting extends BaseScreen {
  @override
  void build() {
    print("Setting");
    print("1.Change of image");
    print("2.Change of name");
    print("3.Change of lastname");
    print("4.Change of phone number");
    print("5.Change of password");
    print("6.Back");
    int num = io.number;
    switch (num) {
      case 1:
        {
          ChangeOfTeacher.changeOfImage();
        }
        break;
      case 2:
        {
          ChangeOfTeacher.changeOfName();
        }
        break;
      case 3:
        {
          ChangeOfTeacher.changeOfLastname();
        }
        break;
      case 4:
        {
          ChangeOfTeacher.changeOfPhone();
        }
        break;
      case 5:
        {
          ChangeOfTeacher.changeOfPassword();
        }
        break;
      case 6:
        {
          TeacherProfile();
        }
        break;
      default:
        {
          Utils.wrongState(build);
        }
    }
  }
}
