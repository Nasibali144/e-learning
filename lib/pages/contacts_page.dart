import 'package:e_learning/pages/base_page.dart';
import 'package:e_learning/pages/intro_page.dart';
import 'package:e_learning/services/io_service.dart';
import 'package:e_learning/services/utils.dart';

class ContactsPage extends BaseScreen{
  @override
  void build(){
    super.build();
    print('\n\tContacts');
    print('Phone: +998 (78) 777-47-47');
    print('YouTobe: https://www.youtube.com/@pdpuz');
    print('Telegram: https://t.me/pdpuz');
    print('Maps: Адрес: 3-uy, Tashkent 100020');
    print("\n0. Exit");
    print("1. Back");
    int page = io.number;
    if(page == 1) {
      IntroPage();
    } else {
      Utils.exit();
    }
  }
}