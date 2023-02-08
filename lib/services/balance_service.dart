import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/services/io_service.dart';
import '../databases/students.dart';

class Balance {
  double myBalance = 0;

  Balance() {
    balance();
  }

  void balance() {
    print('1.Show My Balance\n2.Add to balance\n3.Exit');
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
    print('${currentStudent.firstname + currentStudent.lastname}  balance : ${currentStudent.balance}');

    Balance();
  }

  void addToBalance() {
    print("To'lov turini tanlang:");
    List<String> cardType = [
      "Humo",
      "UzCard",
      "Visa",
      "Master Card",
    ];

    for (int i = 0; i < cardType.length; i++) {
      print("${i + 1}. ${cardType[i]}");
    }
    int command = io.number;
    if (command > 0 && command < 5) {
      print('Enter your cart number :');
      int cartnumber = io.number;
      print('summani kiriting :');
      int summa = io.number;
      // list.add('Balansingiz $summa ga toldirildi.');
      print('\nBalansingiz $summa ga toldirildi. ');

      currentStudent.balance = currentStudent.balance + summa;
      balance();
    }
  }
}