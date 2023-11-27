import 'package:flutter/cupertino.dart';

class FavouriteProvider extends ChangeNotifier {
  List<Map<String, dynamic>> favourites = [];

  List<Map<String, dynamic>> blackFavourites = [];

  void favourite(
      String image, String name, String price, BuildContext context) {
    favourites.add({"image": image, "name": name, "price": price});
    Navigator.pushNamed(context, '/favourite');
    notifyListeners();
  }

  // void blackFavourite(String image, BuildContext context) {
  //   blackFavourites.add({"image": image});
  //   Navigator.pushNamed(context, '/favourite');
  //   notifyListeners();
  // }
}
