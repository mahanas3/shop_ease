import 'package:flutter/cupertino.dart';
import 'package:shop_ease/model_class/user_model.dart';
import 'package:shop_ease/services/api_function.dart';

class ScreenProvider extends ChangeNotifier {
  Details? signUpPage;

  List<Map<String, dynamic>> cart = [];

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





  void cartFavourite(
      String image, String name, String price, BuildContext context) {
    cart.add({"image": image, "name": name, "price": price});
    Navigator.pushNamed(context, '/favourite');
    notifyListeners();
  }
}
