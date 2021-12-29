import 'package:flutter/material.dart';
import 'package:food_app/theme/color.dart';

class CustomTextBox extends StatelessWidget {
  CustomTextBox({ Key? key, this.hint = "", this.prefix, this.suffix}) : super(key: key);
  final String hint;
  final Widget? prefix;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 3),
        height: 44,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          border: Border.all(color: cardColor),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: prefix,
            suffixIcon: suffix,
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: darker, fontSize: 15)),
        ),
      );
  }
}
