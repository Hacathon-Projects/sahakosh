import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isObscure;
  final String hintText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color(0xFFE7E7E7),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF3B3A3A))),
    );
  }
}
