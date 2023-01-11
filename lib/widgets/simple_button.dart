import 'package:flutter/material.dart';

class MySimpleButton extends StatelessWidget {
  final String text;
  final Function()? ontap;
  const MySimpleButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.maxFinite,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFE7E7E7)),
        child: Center(
          child: Text(text,
              style: const TextStyle(color: Color(0xFF3B3A3A), fontSize: 15)),
        ),
      ),
    );
  }
}
