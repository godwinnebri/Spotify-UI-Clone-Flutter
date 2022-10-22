import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  AppText(
      {required this.text,
      required this.color,
      this.size = 16,
      this.fontWeight = FontWeight.bold});

  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'SFPRODISPLAYBOLD.OTF',
          color: color,
          fontSize: size,
          fontWeight: fontWeight),
    );
  }
}

//Large text
class AppTextLarge extends StatelessWidget {
  AppTextLarge(
      {required this.text,
      required this.color,
      required this.size,
      this.fontWeight = FontWeight.bold});

  final String text;
  Color color;
  final double size;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'SFPRODISPLAYBOLD.OTF',
          color: color,
          fontSize: size,
          fontWeight: fontWeight),
    );
  }
}
