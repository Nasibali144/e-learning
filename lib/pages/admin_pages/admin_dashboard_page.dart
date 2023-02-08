import 'package:e_learning/pages/admin_pages/accounting_page.dart';
import 'package:e_learning/pages/admin_pages/groups/admin_groups_page.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/teachers_service.dart';
import 'package:e_learning/services/utils.dart';

import '../../services/io_service.dart';

class AdminDashboardPage extends BaseScreen {
  AdminDashboardPage() {
    print('Admin Dashboard Page:');
    print('0. Exit');
    print('1. Teachers');
    print('2. Groups');
    print('3. Students');
    print('4. Courses');
    print('7. Accounting');
    print('8. Return Intro Page\n');

    int page = io.number;
    switch (page) {
      case 0:
        Utils.exit();
        break;
      case 1:
        // TeacherService();
        break;
      case 2:
        AdminGroupsPage();
        break;
      case 7:
        Accounting();
        break;
      case 8:
        IntroPage();
        break;
      default:
        AdminDashboardPage();
    }
  }
}
