import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const SecondaryButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 267,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).primaryColor, width: 1.5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
