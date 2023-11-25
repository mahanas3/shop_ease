import 'package:flutter/material.dart';
import 'package:shop_ease/utilities/dimensions.dart';

class CustomSearch extends StatelessWidget {
  CustomSearch({super.key, required this.hintText, required this.prefixIcon});

  String hintText;

  Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20), // Set circular border here
      ),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20), // Set circular border here
          ),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20), // Set circular border here
          ),
          fillColor: Colors.white.withOpacity(0.9),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Metropolis2',
            color: Colors.black,
          ),
          prefixIcon: prefixIcon,
          prefixIconColor: Colors.black87,
        ),
      ),
    );
  }
}
