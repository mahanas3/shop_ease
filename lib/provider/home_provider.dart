import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  void check(BuildContext context) {
    Navigator.pushNamed(context, '/streetcloths');
    notifyListeners();
  }

  void newButton(BuildContext context) {
    Navigator.pushNamed(context, '/newbutton');
    notifyListeners();
  }

  void tops(BuildContext context) {
    Navigator.pushNamed(context, '/womenstop');
    notifyListeners();
  }

  void summerSale(BuildContext context) {
    Navigator.pushNamed(context, '/categories');
  }

  void newItems(BuildContext context) {
    Navigator.pushNamed(context, '/newItems');
  }

  void blackDress(BuildContext context) {
    Navigator.pushNamed(context, '/blackdress');
  }

  void mensHoodies(BuildContext context) {
    Navigator.pushNamed(context, '/menshoodies');
  }
}
