import 'package:flutter/cupertino.dart';

class ProfileProvider extends ChangeNotifier {
  List<bool> checkBoxValues = [false, false, false];

  List<Map<String, dynamic>> saveData = [];

  void myOrder(BuildContext context) {
    Navigator.pushNamed(context, '/myOrder');
  }

  void orderDetails(BuildContext context) {
    Navigator.pushNamed(context, '/orderDetails');
  }

  void shippingAddress(BuildContext context) {
    Navigator.pushNamed(context, '/shippingAddress');
  }

  void toggleCheckbox(int index) {
    checkBoxValues[index] = !checkBoxValues[index];
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
  void changePassword(BuildContext context) {
    Navigator.pushNamed(context, '/changePassword');
  }
  void paymentMethods(BuildContext context) {
    Navigator.pushNamed(context, '/paymentMethods');
  }
}
