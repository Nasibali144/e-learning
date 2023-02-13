import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/services/io_service.dart';

class Balance {
  double myBalance = 0;

  Balance() {
    balance();
  }

  void balance() {
    print('1.Show My Balance\n2.Add to balance\n3.back');
    int command = io.number;
    switch (command) {
      case 1:
        showBalance();
        break;
      case 2:
        addToBalance();
        break;
      case 3:
        HomePage();
    }
  }

  void showBalance() {
    print(
        '${currentStudent.firstname + currentStudent.lastname}  balance : ${currentStudent.balance}');

    Balance();
  }

  void addToBalance() {
    print("To'lov turini tanlang:\n");
    List<String> cardType = [
      "Humo",
      "UzCard",
      "Visa",
      "Master Card\n",
    ];

    for (int i = 0; i < cardType.length; i++) {
      print("${i + 1}. ${cardType[i]}");
    }
    int command = io.number;
    if (command > 0 && command < 5) {
      print('Enter your cart number :\n');
      int cartnumber = io.number;
      if (cartnumber.toString().length != 16) {
        print('error cart number re-enter\n');
        addToBalance();
      }
      print('enter the amount:');
      int summa = io.number;
      print('\nEnter Cart Password');
      int password = io.number;
      if (password == 2023) {
        // list.add('Balansingiz $summa ga toldirildi.');
        print('\nYour balance added to  $summa  ');

        currentStudent.balance = currentStudent.balance + summa;
        balance();
      } else {
        print('Error Password');
        addToBalance();
      }
    } else {
      print('\nerror\n');
      addToBalance();
    }
  }
}