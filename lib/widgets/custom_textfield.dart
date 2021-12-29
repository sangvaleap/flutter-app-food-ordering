import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom:3),
        height: 44,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.white70),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.white70),
            suffixIcon: Icon(Icons.filter_list_outlined, color: Colors.white70),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.white70, fontSize: 15)),
        ),
      );
  }
}
