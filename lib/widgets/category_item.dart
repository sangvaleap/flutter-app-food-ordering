import 'package:flutter/material.dart';
import 'package:food_app/theme/color.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.data,
    this.seleted = false,
    this.onTap,
  }) : super(key: key);

  final data;
  final bool seleted;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 10),
        width: 90,
        decoration: BoxDecoration(
          color: seleted ? primary : cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.05),
              spreadRadius: .5,
              blurRadius: .5,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              data["icon"],
              size: 17,
              color: seleted ? Colors.white : darker,
            ),
            SizedBox(width: 7),
            Text(
              data["name"],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                color: seleted ? Colors.white : darker,
              ),
            )
          ],
        ),
      ),
    );
  }
}
