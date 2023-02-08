import 'package:e_learning/pages/admin_pages/groups/add_new_groups.dart';
import 'package:e_learning/pages/admin_pages/groups/archive_groups.dart';
import 'package:e_learning/pages/admin_pages/groups/in_process_groups.dart';
import 'package:e_learning/pages/admin_pages/groups/waiting_groups.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/utils.dart';

import '../../../services/io_service.dart';

class AdminGroupsPage {
  AdminGroupsPage() {
    print('\nAdmin Groups Page:');
    print('0. Exit');
    print('1. Add New Groups');
    print('2. In Process Groups');
    print('3. Waiting Groups');
    print('4. Archive Groups');
    print('5. Back To Intro Page\n');

    int page = io.number;
    if (page == 0) {
      Utils.exit();
    } else if (page == 1) {
      AddNewGroups();
    } else if (page == 2) {
      InProcessGroups();
    } else if (page == 3) {
      WaitingGroups();
    } else if (page == 4) {
      ArchiveGroups();
    } else if (page == 5) {
      IntroPage();
    } else
      AdminGroupsPage();
  }
}
