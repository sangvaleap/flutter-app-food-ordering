import 'package:flutter/material.dart';
import 'package:food_app/theme/color.dart';

import 'favorite_box.dart';

class PopularItem extends StatelessWidget {
  PopularItem({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: 170,
      width: 220,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: _buildItemImage(),
          ),
          Positioned(
            top: 0,
            right: 5,
            child: FavoriteBox(
              isFavorited: data["is_favorited"],
            ),
          ),
          Positioned(
            top: 140,
            child: _buildItemInfo(),
          )
        ],
      ),
    );
  }

  _buildItemImage() {
    return Container(
      height: 120,
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(data["image"]),
        ),
      ),
    );
  }

  _buildItemInfo() {
    return SizedBox(
      width: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  data["name"],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                data["price"],
                style: TextStyle(
                  fontSize: 14,
                  color: primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
