import 'package:flutter/cupertino.dart';
import 'package:shop_ease/model_class/user_model.dart';
import 'package:shop_ease/services/api_function.dart';

class ScreenProvider extends ChangeNotifier {
  Details? signUpPage;

  void signUpScreen(BuildContext context, String UserName, String Password,
      String Name, String PhoneNo) async {
    try {
      signUpPage =
          await ApiServices().signUp(UserName, Password, Name, PhoneNo);
      print(signUpPage);
      Navigator.pushNamed(context, '/home');
      notifyListeners();
    } catch (e) {
      print(e);
    }
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

  void newItems(BuildContext context) {
    Navigator.pushNamed(context, '/newItems');
  }

  void womenNew(BuildContext context) {
    Navigator.pushNamed(context, '/womensnew');
  }

  void mensNew(BuildContext context) {
    Navigator.pushNamed(context, '/mensnew');
  }

  void kidsNew(BuildContext context) {
    Navigator.pushNamed(context, '/kidsnew');
  }

  void blackDress(BuildContext context) {
    Navigator.pushNamed(context, '/blackdress');
  }

  void mensHoodies(BuildContext context) {
    Navigator.pushNamed(context, '/menshoodies');
  }
}
