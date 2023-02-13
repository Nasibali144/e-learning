import 'package:e_learning/pages/home_page.dart';
import 'package:e_learning/services/payment_service.dart';
import 'package:e_learning/services/utils.dart';
import '../services/io_service.dart';
import '../services/payment_history_service.dart';
import 'base_page.dart';
class PaymentPage extends BaseScreen {
  @override
  void build() {
    super.build();
    print('Students Payment ');
    print('1. Payment History ');
    print('2. Pay for course');
    print('3. Back');
    print('0. Exit');
    int page = io.number;
    if (page == 1) {
      PaymentHistory();
    } else if (page == 2) {
      PayToCourse();
    } else if (page == 3) {
      HomePage();
    } else if (page == 0) {
      Utils.exit();
    } else {
      build();
    }
  }
}