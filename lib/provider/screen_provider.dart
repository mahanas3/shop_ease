import 'package:flutter/cupertino.dart';

class ScreenProvider extends ChangeNotifier {
  void signUp(BuildContext context) {
    Navigator.pushNamed(context, '/home');
    notifyListeners();
  }

  void login(BuildContext context) {
    Navigator.pushNamed(context, '/home');
    notifyListeners();
  }

  void forgotPassword(BuildContext context) {
    Navigator.pushNamed(context, '/forgot');
    notifyListeners();
  }

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
}
