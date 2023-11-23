class CartProvider extends ChangeNotifier{

  List<Map<String, dynamic>> cart = [];


  void cartFavourite(
      String image, String name, String price, BuildContext context) {
    cart.add({"image": image, "name": name, "price": price});
    Navigator.pushNamed(context, '/favourite');
    notifyListeners();
  }
}