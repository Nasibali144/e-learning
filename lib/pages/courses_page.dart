import 'package:e_learning/databases/courses/courses.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';
import '../models/user_model.dart';



class CoursesPage extends BaseScreen {

  User? user;

  CoursesPage([this.user]);

  @override
  void build() {
    super.build();
    print("Our courses:");
    for(int i = 0; i < courses.length; i++) {
      print("\t${i + 1}. ${courses[i].name}. ${courses[i].price}");
    }
    print("0. Exit");
    print("${courses.length + 1}. Back");

    int page = io.number;
    if(page == 0) {
      Utils.exit();
    } else if(page == courses.length + 1) {
      Utils.back(user);
    } else if(page < 0 || page > courses.length + 1) {
      Utils.wrongState(build);
    }
    // TODO: CourseDetailPage
  }
}