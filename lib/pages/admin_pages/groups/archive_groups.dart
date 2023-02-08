import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/pages/admin_pages/groups/admin_groups_page.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class ArchiveGroups extends BaseScreen {
  ArchiveGroups() {
    for (int i = 0; i < groups.length; i++) {
      if (groups[i].status == Status.completed) {
        print('\t$i. ${groups[i].name}  ${groups[i].createdAt}');
      }
    }
    print('0. Exit');
    print('1. Back To Admin Groups Page');
    print('2. Return Intro Page\n');
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
