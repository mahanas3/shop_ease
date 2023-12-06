import 'package:flutter/material.dart';

class CustomReviewTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;

  CustomReviewTextField({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  @override
  _CustomReviewTextFieldState createState() => _CustomReviewTextFieldState();
}

class _CustomReviewTextFieldState extends State<CustomReviewTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      maxLines: null,
      decoration: InputDecoration(
        isCollapsed: false,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        filled: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        fillColor: Colors.white.withOpacity(0.9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        labelText: widget.labelText,
        labelStyle: const TextStyle(fontFamily: 'Metropolis'),
      ),
    );
  }
}
