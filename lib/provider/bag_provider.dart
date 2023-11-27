import 'package:flutter/cupertino.dart';

class BagProvider extends ChangeNotifier {
  List<Map<String, dynamic>> cartData = [];

  void cartPage(String image, String color, String size, String price,
      BuildContext context) {
    cartData
        .add({"image": image, "color": color, "size": size, "price": price});
    Navigator.pushNamed(context, '/myBag');
    notifyListeners();
  }
}
