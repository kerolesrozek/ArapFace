
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hint, required this.suffixIcon, this.onSubmitted, required this.obscureText,
  });
  final String hint;
  final Icon suffixIcon;
final  void Function(String)? onSubmitted;

final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:obscureText ,
      
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
          suffixIcon: suffixIcon,
          contentPadding:const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 15,
          )),
    );
  }
}
