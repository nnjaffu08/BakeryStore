import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon? prefixIcon;
  final VoidCallback? onEyeIconPressed;

  const MyTextField({
    super.key,
    this.controller,
    required this.hintText,
    required this.obscureText,
    this.prefixIcon,
    this.onEyeIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[500]),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD89F68),width: 1.5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD89F68),width: 1.5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
          ),
          suffixIcon: IconButton(
            onPressed: onEyeIconPressed,
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.remove_red_eye,
              color: Colors.grey[500],
            ),
          ),
        ),
      ),
    );
  }
}
