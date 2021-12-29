import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationBox extends StatelessWidget {
  const NotificationBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.withOpacity(.3)),
      ),
      child: Badge(
        padding: EdgeInsets.all(3),
        position: BadgePosition.topEnd(top: -7, end: 2),
        badgeContent: Text('', style: TextStyle(color: Colors.white),),
        child: Icon(FontAwesomeIcons.solidBell, size: 20,)
      ),
    );
  }
}
