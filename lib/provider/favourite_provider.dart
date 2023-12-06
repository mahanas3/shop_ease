import 'package:flutter/cupertino.dart';

class FavouriteProvider extends ChangeNotifier {
  List<Map<String, dynamic>> favourites = [];

  void favourite(
      String image, String name, String price, BuildContext context) {
    favourites.add({"image": image, "name": name, "price": price});
    Navigator.pushNamed(context, '/favourite');
    notifyListeners();
  }
}
