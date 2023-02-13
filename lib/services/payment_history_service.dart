import 'package:e_learning/services/utils.dart';
import '../pages/base_page.dart';
import '../pages/home_page.dart';
import '../pages/payment_page.dart';
import 'io_service.dart';

class PaymentHistory extends BaseScreen {
  @override
  void build() {
    super.build();
    print('Payment Histori');
    for (int i = 0; i < currentStudent.payments.length; i++) {
      print('${i + 1} :Models :${currentStudent.payments[i]}');
    }
    print('0. Exit ');
    print('1. Back ');
    int page = io.number;
    if (page == 0) {
      Utils.exit();
    } else if (page == 1) {
      PaymentPage();
    } else {
      PaymentHistory();
    }
  }
}