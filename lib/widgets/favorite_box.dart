import 'package:flutter/material.dart';
import 'package:food_app/theme/color.dart';

class FavoriteBox extends StatelessWidget {
  const FavoriteBox(
      {Key? key,
      this.padding = 5,
      this.iconSize = 18,
      this.isFavorited = false,
      this.onTap})
      : super(key: key);

  final double padding;
  final double iconSize;
  final bool isFavorited;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(color: primary, shape: BoxShape.circle),
        child: Icon(
          isFavorited ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
          size: iconSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
