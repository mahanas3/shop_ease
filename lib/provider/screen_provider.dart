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
}
