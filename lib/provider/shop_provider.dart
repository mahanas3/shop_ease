import 'package:flutter/material.dart';

class ShopProvider extends ChangeNotifier {
  double _minValue = 0.0;
  double _maxValue = 100.0;

  double get minValue => _minValue;

  double get maxValue => _maxValue;

  bool? isChecked = true;

  void womenNew(BuildContext context) {
    Navigator.pushNamed(context, '/womensnew');
    notifyListeners();
  }

  void mensNew(BuildContext context) {
    Navigator.pushNamed(context, '/mensnew');
    notifyListeners();
  }

  void kidsNew(BuildContext context) {
    Navigator.pushNamed(context, '/kidsnew');
    notifyListeners();
  }

  void filter(BuildContext context) {
    Navigator.pushNamed(context, '/filter');
    notifyListeners();
  }

  void setMinSliderValue(double value) {
    _minValue = value;
    notifyListeners();
  }

  void setMaxSliderValue(double value) {
    _maxValue = value;
    notifyListeners();
  }

  void brand(BuildContext context) {
    Navigator.pushNamed(context, '/brand');
    notifyListeners();
  }

  void brandCheckbox(BuildContext context) {
    isChecked = isChecked!;
    notifyListeners();
  }
  void tshirtDetails(BuildContext context) {
    Navigator.pushNamed(context, '/tshirtDetails');
    notifyListeners();
  }

}
