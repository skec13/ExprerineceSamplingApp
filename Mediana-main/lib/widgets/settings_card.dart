import 'package:flutter/material.dart';
import 'package:mediana/constants/constants.dart';

class SettingsCard extends StatelessWidget {
  SettingsCard({this.cardIcon, this.cardDescription, this.onPress});

  final IconData cardIcon;
  final String cardDescription;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 118.0,
        width: 121.0,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              cardIcon,
              size: 45,
            ),
            SizedBox(height: 10.0),
            Text(cardDescription, style: settingsIconText),
          ],
        ),
      ),
      onTap: onPress,
    );
  }
}
