import 'package:flutter/cupertino.dart';

class ShopProvider extends ChangeNotifier {
  void womenNew(BuildContext context) {
    Navigator.pushNamed(context, '/womensnew');
  }

  void mensNew(BuildContext context) {
    Navigator.pushNamed(context, '/mensnew');
  }

  void kidsNew(BuildContext context) {
    Navigator.pushNamed(context, '/kidsnew');
  }
}
