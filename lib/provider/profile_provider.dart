import 'package:flutter/cupertino.dart';

class ProfileProvider extends ChangeNotifier {
  void myOrder(BuildContext context) {
    Navigator.pushNamed(context, '/myOrder');
  }

  void orderDetails(BuildContext context) {
    Navigator.pushNamed(context, '/orderDetails');
  }
}
