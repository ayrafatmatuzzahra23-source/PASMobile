import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String myHint;
  final double radius;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.myHint,
    required this.radius,
    this.obscureText = false, 
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 142, 139, 139),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 255, 255, 255),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}