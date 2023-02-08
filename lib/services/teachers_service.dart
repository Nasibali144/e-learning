import 'package:e_learning/databases/teachers.dart';

import 'io_service.dart';

// TODO: MuhammadAzim Update in the future
class TeacherService {
  TeacherService() {
    teacherService();
  }

  void teacherService() {
    print("Enter the command");
    print("1.Teacher\n2.Teachers Edit\n3.Teacher Delete");
    int input = io.number;
    switch (input) {
      case 1:
        {
          int maxCount = 0;
          int count = 0;
          for (int i = 0; i < teachers.length; i++) {
            print("${i + 1}.${teachers[i].firstname} ${teachers[i].lastname}");
            count = i + 1;
            if (count > maxCount) {
              maxCount = count;
            }
            count = 0;
          }

          print("${maxCount + 1} Create new account");

          print("Select command");
          int n = io.number;
          n--;

          if (teachers[n] == teachers[n]) {
            print(
                "Ustozning tajribasi: ${teachers[n].experience}\nUstozning oyligi:${teachers[n].salary}\nUstozning Kursi: ${teachers[n].courses}\nUstozning Raqami: ${teachers[n].phone}\n \n");
          }
          /*else if (n + 1 == maxCount + 1) {
            AddNew();
          }*/
          teacherService();
          break;
        }
      case 2:
        {
          for (int i = 0; i < teachers.length; i++) {
            print("${i + 1}.${teachers[i].firstname} ${teachers[i].lastname}");
          }
          print("Select teacher");
          int n = io.number;
          n--;
          if (teachers[n] == teachers[n]) {
            print("Enter new lastname");
            String lastname = io.text;
            print("Enter new firstname");
            String firsname = io.text;
            teachers[n].lastname = lastname;
            teachers[n].firstname = firsname;
          }

          teacherService();
          break;
        }

      case 3:
        {
          for (int i = 0; i < teachers.length; i++) {
            print("${i + 1}.${teachers[i].firstname} ${teachers[i].lastname}");
          }
          print("Select teacher");
          int n = io.number;
          n--;
          if (teachers[n] == teachers[n]) {
            teachers.remove(teachers[n]);
          }

          teacherService();
          break;
        }
    }
  }
}
