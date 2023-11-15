import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield(
      {super.key,
      required this.text1,
      required this.text2,
      required this.controller,
      required this.validator});

  String text1;
  String text2;

  final TextEditingController controller;

  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          // spreadRadius: 2,
          // blurRadius: 5,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ]),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          filled: true,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          fillColor: Colors.white.withOpacity(0.9),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          labelText: text1,
          labelStyle: TextStyle(
            fontFamily: 'Metroplis2',
            color: Colors.black87.withOpacity(0.4),
          ),
          hintText: text2,
          hintStyle:
              const TextStyle(fontFamily: 'Metroplis2', color: Colors.black),
        ),
        validator: validator,
      ),
    );
  }
}
