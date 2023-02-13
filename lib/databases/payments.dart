import '../models/enums/status.dart';
import '../models/payment_model.dart';
import 'courses/Java.dart';
import 'courses/flutter.dart';

final pay1 = Payment(status: Status.paid, course: courseFlutter,modul: courseFlutter.moduls[1], total: 3000000, price: courseFlutter.moduls[1].price);
final pay2 = Payment(status: Status.notPaid, course: courseJava,modul: courseJava.moduls[1], total: 2000000, price: courseJava.moduls[1].price);