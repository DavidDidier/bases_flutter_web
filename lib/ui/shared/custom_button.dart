import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  const CustomButton(
      {super.key,
      required this.text,
      this.color = Colors.purpleAccent,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          primary: color,
        ),
        onPressed: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ));
  }
}
