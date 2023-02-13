import 'package:e_learning/pages/teacher_dashboard.dart';

import '../databases/groups.dart';
import '../models/group_model.dart';
import '../models/student_model.dart';
import '../services/io_service.dart';
import 'base_page.dart';

class PrintGroup extends BaseScreen {
  @override
  void build() {
    int count = 0;
    for (int i = 0; i < groups.length; i++) {
      if (groups[i].teacher.uid == currentTeacher.uid) {
        print('${i + 1}. ${groups[i].name}:');
        count++;
      }
    }
    print("\nChoose the name of group by number\n");

    selectGroup(count);
  }

  void selectGroup(int max) {
    int choose = io.number;
    if (choose < 0 || choose > max) {
      print("\nWrong number entered!\n");
      selectGroup(max);
    } else {
      int count = 0;
      for (var gr in groups) {
        if (gr.teacher.uid == currentTeacher.uid) {
          count++;
          if (choose == count) {
            selectedGroup(gr);
          }
        }
      }
    }
  }

  void selectedGroup(Group group) {
    int count = 0;
    Map<int, Student> studentList = {};
    print("\t\t${group.name} students list");
    for (var student in group.students) {
      count++;
      print("$count.${student.firstname} ${student.lastname}");
      studentList[count] = student;
    }

    print("\nPress enter to go back!\n");
    io.number;
    TeacherDashboard();
  }
}

class StudentInfo extends BaseScreen {
  @override
  void build() {
    int count = 0;
    Map<int, Student> myStudents = {};
    print("\nStudents list\n");
    for (var gr in groups) {
      if (gr.teacher.uid == currentTeacher.uid) {
        for (var st in gr.students) {
          count++;
          myStudents[count] = st;
          print("$count.${st.firstname} ${st.lastname}");
        }
      }
    }
    io.console("\nChoose the Student by number\n");
    int choose = io.number;
    if (myStudents.containsKey(choose)) {
      chooseStudent(myStudents[choose]!);
    } else {
      print("\nWrong number entered\n");
    }
  }

  void chooseStudent(Student student) {
    print("\nStudent's info\n");
    print("Name: ${student.firstname}");
    print("Surname: ${student.lastname}");
    print("Phone: ${student.phone}\n");

    print("Press enter to go back!");
    io.number;
    TeacherDashboard();
  }
}