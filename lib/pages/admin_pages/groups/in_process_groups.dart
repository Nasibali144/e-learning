import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/pages/admin_pages/groups/admin_groups_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class InProcessGroups {
  InProcessGroups() {
    print('Database Groups:');
    for (int i = 0; i < groups.length; i++) {
      print(
          '\t${i }. Group Name: ${groups[i].name}; Teacher Name:${groups[i].teacher.firstname}; Students Count: ${groups[i].students.length} ');
    }
    print('\nEnter Command:');
    print('0. Exit');
    print('1. Edit Group');
    print('2. Back To Intro Page ');
    int page = io.number;
    if (page == 0) {
      Utils.exit();
    } else if (page == 1) {
      edit();
    } else if (page == 2) {
    IntroPage();
    } else {
      InProcessGroups();
    }

  }
}

void edit(){
  print('Enter group number');
  int groupNumber=io.number;
   if(groupNumber<0&&groupNumber-1>=groups.length){
     InProcessGroups();
   }

  print('\t0. Do you want to add student.');
  print('\t1. Do you want to remove student.');
  int number=io.number;
  if(number==0){}
}