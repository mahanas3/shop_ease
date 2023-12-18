import 'package:shared_preferences/shared_preferences.dart';

import '../model_class/user_model.dart';

class UserPreferences {
  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt("userId", user.userId);
    prefs.setString("name", user.name);
    prefs.setString("email", user.email);
    prefs.setString("phone", user.phone);
    prefs.setString("type", user.type);
    prefs.setString("token", user.token);
    prefs.setString("renewalToken", user.renewalToken);

    return prefs.commit();
  }
}