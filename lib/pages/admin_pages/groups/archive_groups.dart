import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/pages/admin_pages/groups/admin_groups_page.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/status_print_service.dart';
import 'package:e_learning/services/utils.dart';

class ArchiveGroups extends BaseScreen {
  ArchiveGroups() {
    if(groups.isNotEmpty){
      StatusPrint(Status.completed);
    }
    else{
      print('We don\'t have comleted groups.\n');
    }

    print('0. Exit');
    print('1. Admin Groups Page');
    print('2. Log Out\n');
    int page = io.number;
    switch (page) {
      case (0):
        {
          Utils.exit();
        }
        break;
      case (1):
        {
          AdminGroupsPage();
        }
        break;
      case (2):
        {
          IntroPage();
        }
        break;
      default:
        ArchiveGroups();
    }
  }
}