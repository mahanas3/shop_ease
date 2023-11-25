import 'package:flutter/material.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class CustomBoxSize extends StatelessWidget {
  CustomBoxSize({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              fontSize: Dimensions.heightCalc(context, 18),
              fontFamily: 'Metropolis'),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black87),
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
