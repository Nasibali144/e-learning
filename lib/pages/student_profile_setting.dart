import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/student_profile_page.dart';
import 'package:e_learning/services/change_of_profile_service.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class StudentProfileSetting extends BaseScreen {
  @override
  void build() {
    print("Setting");
    print("1.Change of image");
    print("2.Change of name");
    print("3.Change of lastname");
    print("4.Change of password");
    print("5.Back");
    int num = io.number;
    switch (num) {

      case 1:
        {
          ChangeOfStudent.changeOfImage();
        }
        break;
      case 2:
        {
          ChangeOfStudent.changeOfName();
        }
        break;
      case 3:
        {
          ChangeOfStudent.changeOfLastname();
        }
        break;
      case 4:
        {
          ChangeOfStudent.changeOfPassword();
        }
        break;
      case 5:
        {
          StudentProfile();
        }
        break;
      default:
        {
          Utils.wrongState(build);
        }
    }
  }
}
