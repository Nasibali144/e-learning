import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/models/enums/status.dart';

class StatusPrint{
  StatusPrint(Status status){
    print('$status Groups Page');
    for (int i = 0; i < groups.length; i++) {
      if (groups[i].status == status) {
        print('\t$i. ${groups[i].name}  ${groups[i].createdAt}');
      }
    }
  }
}