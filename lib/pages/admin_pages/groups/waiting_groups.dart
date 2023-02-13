import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/models/enums/status.dart';
import 'package:e_learning/pages/admin_pages/groups/admin_groups_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/status_print_service.dart';
import 'package:e_learning/services/utils.dart';

class WaitingGroups {
  WaitingGroups() {
    StatusPrint(Status.upComing);

    print(
        'Do you want to change group of status in process?\n\t0. Yes\n\t1. No');
    int groupStatus = io.number;
    if (groupStatus == 0) {
      print('Choose group number.');
      int number = io.number;
      groups[number].status = Status.inProgress;
      print(
          'Succesfuly changed status of the group in process.');
    } else {
      AdminGroupsPage;
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
        WaitingGroups();
    }
  }
}