import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationBox extends StatelessWidget {
  const NotificationBox({Key? key, this.number = 0, this.onTap})
      : super(key: key);

  final int number;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey.withOpacity(.3),
          ),
        ),
        child: number > 0 ? _buildNofiedIcon() : _buildIcon(),
      ),
    );
  }

  _buildNofiedIcon() {
    return Badge(
      padding: EdgeInsets.all(3),
      position: BadgePosition.topEnd(top: -7, end: 2),
      badgeContent: Text(
        '',
        style: TextStyle(color: Colors.white),
      ),
      child: _buildIcon(),
    );
  }

  _buildIcon() {
    return Icon(
      FontAwesomeIcons.solidBell,
      size: 20,
    );
  }
}
