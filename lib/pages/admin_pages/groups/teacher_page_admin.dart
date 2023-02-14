import 'dart:io';

import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/databases/teachers.dart';
import 'package:e_learning/pages/admin_pages/admin_dashboard_page.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

import '../../../services/add_new_service.dart';

class TeachersPageAdmin extends BaseScreen {
  @override
  void build() {
    super.build();
    print("Our teachers:");
    for (int i = 0; i < teachers.length; i++) {
      print("\t${i + 1}. ${teachers[i]}");
    }
    print("${teachers.length + 1}.Create new teacher");
    print("${teachers.length + 2}.Edit selected teacher");
    print("${teachers.length + 3}.Delete selected teacher");
    print("${teachers.length + 4}.Back");
    print("0. Exit");


    int page = io.number;
    if (page == 0) {
      Utils.exit();
    } else if (page == teachers.length + 1) {
      NewTeacher();
    } else if (page == teachers.length + 2) {
      print("Select number teacher");
      int select = io.number;
      select--;
      if (teachers[select] == teachers[select]) {
        io.console("Enter new firstname: ");
        String firstname = io.text;
        io.console("Enter new lastname: ");
        String lastname = io.text;
        teachers[select].firstname = firstname;
        teachers[select].lastname = lastname;
        print("Successful Edition");
      }
    } else if (page == teachers.length + 3) {
      print("Select number teacher");
      int select = io.number;
      select--;
      if (teachers[select] == teachers[select]) {
        teachers.remove(teachers[select]);
        print("Successful delete");
      }
    } else if (page < 0 || page > teachers.length + 4) {
      Utils.wrongState(build);
    }

    // TODO: TeacherDetailPage
    AdminDashboardPage();
  }
}
