import 'package:flutter/cupertino.dart';

class ProfileProvider extends ChangeNotifier{
  void myOrder(BuildContext context){
    Navigator.pushNamed(context, '/');
  }
}