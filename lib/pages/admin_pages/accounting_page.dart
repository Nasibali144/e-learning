import 'package:e_learning/databases/courses/courses.dart';
import 'package:e_learning/databases/groups.dart';
import 'package:e_learning/databases/students.dart';
import 'package:e_learning/models/course_model.dart';
import 'package:e_learning/models/group_model.dart';
import 'package:e_learning/models/student_model.dart';
import 'package:e_learning/pages/admin_pages/admin_dashboard_page.dart';
import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/services/io_service.dart';

class Accounting extends BaseScreen {
  @override
  void build() {
    super.build();
    print("\t\t\tAccounting Page");
    print('''
0 - Back
1 - Courses
2 - Groups
3 - Persons
    ''');
    int command = io.number;
    switch (command) {
      case 0:
        {
          AdminDashboardPage();
        }
        break;
      case 1:
        {
          viewCourses();
          Accounting();
        }
        break;
      case 2:
        {
          viewGroup();
          Accounting();
        }
        break;
      case 3:
        {
          viewPerson();
          Accounting();
        }
        break;
      default:
        {
          Accounting();
        }
    }
  }

  void viewCourses() {
    print("\n\t\t\tChoose the Courses");
    int count = 0;
    for (var course in courses) {
      count++;
      print("$count : Course : ${course.name}");
    }
    selectCourse(count);
  }

  void selectCourse(int max) {
    io.console("choose the Course :");
    int command = io.number;
    if (command < 0 || command > max) {
      print("Wrong index entered");
      selectCourse(max);
    } else {
      int count = 0;
      for (var course in courses) {
        count++;
        if (count == command) {
          selectedCourse(course);
        }
      }
    }
  }

  void selectedCourse(Course course) {
    num total = 0;
    num totalPrice = 0;
    int modul = 0;
    num thismonth = 0;
    for (var x in groups) {
      if (x.course.id == course.id) {
        for (var student in x.students) {
          modul = x.course.moduls.length;
          for (var pay in student.payments) {
            total += pay.total;
            totalPrice += pay.price;
          }
        }
      }
    }
    thismonth = total / modul;
    print("-------------------------------------------------");
    print("Course : ${course.name}");
    print("Total modul need pay: $total");
    print("Total modul paid : ${total - totalPrice}");
    print("-------------------------------------------------");
    print("Total : $thismonth");
    print("Paid : $totalPrice");
    print("Need Pay : ${totalPrice - thismonth}");
  }

  void viewGroup() {
    int count = 0;
    print("\n\t\t\tGroups Select");
    for (var group in groups) {
      count++;
      print("$count : ${group.name}");
    }
    selectGroup(count);
  }

  void selectGroup(int max) {
    io.console("Choose the Group :");
    int command = io.number;
    if (command < 0 || command > max) {
      print("Wrong index entered");
    } else {
      int count = 0;
      for (var group in groups) {
        count++;
        if (count == command) {
          selectedGroup(group);
        }
      }
    }
  }

  void selectedGroup(Group group) {
    num total = 0;
    num totalPrice = 0;
    int modul = 0;
    num thismonth = 0;
    for (var student in group.students) {
      modul = group.course.moduls.length;
      for (var pay in student.payments) {
        total += pay.total;
        totalPrice += pay.price;
      }
    }
    thismonth = total / modul;
    print("-------------------------------------------------");
    print("Group : ${group.name}");
    print("Total modul need pay: $total");
    print("Total modul paid : ${total - totalPrice}");
    print("-------------------------------------------------");
    print("Total : $thismonth");
    print("Paid : $totalPrice");
    print("Need Pay : ${totalPrice - thismonth}");
  }

  void viewPerson() {
    int count = 0;
    print("\n\t\t\tStudent Select");
    for (var student in students) {
      count++;
      print(
          "$count : FirstName : ${student.firstname} : LastName : ${student.lastname} : Number : ${student.phone}");
    }
    selectPerson(count);
  }

  void selectPerson(int max) {
    io.console("Choose the Student :");
    int command = io.number;
    if (command < 0 || command > max) {
      print(command);
      print(max);
      print("Wrong index entered");
      selectPerson(max);
    } else {
      int count = 0;
      for (var student in students) {
        count++;
        if (count == command) {
          selectedPerson(student);
        }
      }
    }
  }

  void selectedPerson(Student student) {
    num total = 0;
    num totalPrice = 0;
    num thismonth = 0;

    for (var pay in student.payments) {
      total += pay.total;
      totalPrice += pay.price;
    }

    thismonth = total / 9;
    print("-------------------------------------------------");
    print(
        "Student : FirstName : ${student.firstname} : LastName :${student.lastname}");
    print("Total modul need pay: $total");
    print("Total modul paid : ${total - totalPrice}");
    print("-------------------------------------------------");
    print("Total : $thismonth");
    print("Paid : $totalPrice");
    print("Need Pay : ${totalPrice - thismonth}");
  }
}
