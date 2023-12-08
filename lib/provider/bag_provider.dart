import 'package:flutter/cupertino.dart';

class BagProvider extends ChangeNotifier {
  List<Map<String, dynamic>> cartData = [];

  void cartPage(String image, String color, String size, String price,
      String title, BuildContext context) {
    cartData.add({
      "image": image,
      "color": color,
      "size": size,
      "price": price,
      "title": title
    });
    Navigator.pushNamed(context, '/myBag');
    notifyListeners();
  }

  void checkOut(BuildContext context) {
    Navigator.pushNamed(context, '/checkout');
    notifyListeners();
  }
}
