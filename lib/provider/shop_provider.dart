import 'package:flutter/material.dart';

class ShopProvider extends ChangeNotifier {

  double _minValue = 0.0;
  double _maxValue = 100.0;
  double get minValue => _minValue;
  double get maxValue => _maxValue;

  void womenNew(BuildContext context) {
    Navigator.pushNamed(context, '/womensnew');
  }

  void mensNew(BuildContext context) {
    Navigator.pushNamed(context, '/mensnew');
  }

  void kidsNew(BuildContext context) {
    Navigator.pushNamed(context, '/kidsnew');
  }

  void filter(BuildContext context) {
    Navigator.pushNamed(context, '/filter');
  }

  void setMinSliderValue(double value) {
    _minValue = value;
    notifyListeners();
  }

  void setMaxSliderValue(double value) {
    _maxValue = value;
    notifyListeners();
  }
}
