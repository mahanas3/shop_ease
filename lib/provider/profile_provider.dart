import 'package:flutter/material.dart';
import '../model_class/singleuser_model.dart';
import '../services/api_function.dart';

class ProfileProvider extends ChangeNotifier {
  bool checkBoxValues = false;

  bool isChecked = false;

  List<Map<String, dynamic>> saveData = [];

  bool isChecking = false;

  Data? getUser;

  bool loading = false;

  void myOrder(BuildContext context) {
    Navigator.pushNamed(context, '/myOrder');
  }

  void orderDetails(BuildContext context) {
    Navigator.pushNamed(context, '/orderDetails');
  }

  void shippingAddress(BuildContext context) {
    Navigator.pushNamed(context, '/shippingAddress');
  }

  void shippingCheckbox() {
    checkBoxValues = !checkBoxValues;
    notifyListeners();
  }

  void addShippingAddress(BuildContext context) {
    Navigator.pushNamed(context, '/addShippingAddress');
  }

  void saveAddressButton(BuildContext context, String name, String address,
      String city, String state, String zipcode, String country) {
    saveData.add({
      'name': name,
      'address': address,
      'city': city,
      'state': state,
      'zipcode': zipcode,
      'country': country
    });
    Navigator.pushNamed(context, '/saveAddressButton');
  }

  void settings(BuildContext context) {
    Navigator.pushNamed(context, '/settings');
  }

  void paymentMethods(BuildContext context) {
    Navigator.pushNamed(context, '/paymentMethods');
  }

  void toggleCheckbox1() {
    isChecked = !isChecked;
    notifyListeners();
  }

  void paymentCheckbox() {
    isChecking = !isChecking;
    notifyListeners();
  }

  void getUserProfile(String id, BuildContext context) async {
    try {
      loading = true;
      notifyListeners();
      getUser = await ApiServices().getProfileDetails(id);
      print(id);
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
}
