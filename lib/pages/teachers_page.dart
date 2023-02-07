import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class TeachersPage extends BaseScreen {
  @override
  void build() {
    super.build();
    print("Our teachers:");
    for(int i = 0; i < teachers.length; i++) {
      print("\t${i + 1}. ${teachers[i]}");
    }
    print("0. Exit");
    print("${teachers.length + 1}. Back");

    int page = io.number;
    if(page == 0) {
      Utils.exit();
    } else if(page == teachers.length + 1) {
      IntroPage();
    } else if(page < 0 || page > teachers.length + 1) {
      Utils.wrongState(build);
    }

    // TODO: TeacherDetailPage
  }
}