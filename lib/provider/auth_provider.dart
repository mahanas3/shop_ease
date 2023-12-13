import 'package:flutter/material.dart';
import 'package:shop_ease/model_class/user_model.dart';
import 'package:shop_ease/services/api_function.dart';
import '../routes/route_name.dart';

class AuthProvider extends ChangeNotifier {
  bool loading = false;

  Details? signUpPage;

  void signUpScreen(BuildContext context, String userName, String password,
      String email, String phoneNo) async {
    try {
      loading = true;
      notifyListeners();
      signUpPage =
          await ApiServices().signUp(userName, password, email, phoneNo);
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, RouteName.homescreen);
      }
      loading = false;
      notifyListeners();
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Something Went Wrong')));
      }
      loading = false;
      notifyListeners();
    }
  }

  void login(
    BuildContext context,
    String userName,
    String password,
  ) async {
    try {
      loading = true;
      notifyListeners();
      signUpPage = await ApiServices().signIn(userName, password);
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, RouteName.homescreen);
      }
      loading = false;
      notifyListeners();
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Something Went Wrong')));
      }
      loading = false;
      notifyListeners();
    }
  }

  void forgotPassword(BuildContext context) {
    Navigator.pushNamed(context, '/forgot');
    notifyListeners();
  }
}
