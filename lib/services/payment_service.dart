import '../models/enums/status.dart';
import '../models/payment_model.dart';
import '../pages/base_page.dart';
import '../pages/home_page.dart';
import '../pages/payment_page.dart';
import 'io_service.dart';

class PayToCourse extends BaseScreen {
  @override
  void build() {
    super.build();

    print('Your course ${currentStudent.groups[0].course.name}\n');
    print('Which module do you want to pay for? :\n');
    for (var element in currentStudent.groups[0].course.moduls) {
      print('Module ${element.number} - ${element.name}');
    }
    print('\nEnter Module number :');
    int num = io.number;
    if (currentStudent.groups[0].course.moduls.length >= num) {
      print(
          'Module $num price ${currentStudent.groups[0].course.moduls[num].price}\nEnter the amount :');
      double summa = io.numberDouble;
      print('1.Payment\n0.back\n');
      int command = io.number;

      switch (command) {
        case 1:
          {
            if ((currentStudent.groups[0].course.moduls[num].price) <=
                currentStudent.balance) {
              currentStudent.balance = currentStudent.balance -
                  currentStudent.groups[0].course.moduls[num].price;
              print('The payment was made successfully.');
              Payment pay = Payment(
                  status: Status.paid,
                  course: currentStudent.groups[0].course,
                  modul: currentStudent.groups[0].course.moduls[num],
                  total: summa,
                  price: currentStudent.groups[0].course.moduls[num].price);
              currentStudent.payments.add(pay);
              print('0.back');
              int i = io.number;
              PaymentPage();
            } else {
              print("You don't have enough funds in your account");
              Payment pay = Payment(
                  status: Status.notPaid,
                  course: currentStudent.groups[0].course,
                  modul: currentStudent.groups[0].course.moduls[num],
                  total: summa,
                  price: currentStudent.groups[0].course.moduls[num].price);
              currentStudent.payments.add(pay);
              print('0.back');
              int u = io.number;
              PaymentPage();
            }
          }
          break;
        case 0:
          PayToCourse();
      }
    } else {
      print('Error number\n\n ');
      PaymentPage();
    }
  }
}