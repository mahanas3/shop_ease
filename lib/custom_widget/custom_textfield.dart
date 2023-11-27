import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  CustomTextfield(
      {super.key,
      required this.text1,
      this.text2,
      required this.controller,
      this.validator});

  String text1;
  String? text2;

  final TextEditingController controller;

  final String? Function(String?)? validator;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ]),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          filled: true,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          fillColor: Colors.white.withOpacity(0.9),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          labelText: widget.text1,
          labelStyle: TextStyle(
            fontFamily: 'Metropolis2',
            color: Colors.black87.withOpacity(0.4),
          ),
          hintText: widget.text2,
          hintStyle:
              const TextStyle(fontFamily: 'Metropolis2', color: Colors.black),
        ),
        validator: widget.validator,
      ),
    );
  }
}
