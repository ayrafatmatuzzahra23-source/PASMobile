import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final double width;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: Size(width, 55),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 116, 110, 110),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}