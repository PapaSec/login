import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon prefixIcon;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: Color(0xFF4D4526),
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF4D4526)),
              borderRadius: BorderRadius.circular(16)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF4D4526)),
              borderRadius: BorderRadius.circular(16)
          ),
            fillColor: Color(0xFF364249),
            filled: false,
          hintText: hintText,
          prefixIcon: prefixIcon,
          prefixIconColor: Color(0xFF4D4526),
          hintStyle: TextStyle(color: Colors.grey[700])
        ),
      ),
    );
  }
}
