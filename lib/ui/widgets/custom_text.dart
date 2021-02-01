import 'package:flutter/material.dart';
import 'package:icomax/helpers/theme.dart';

class Customtext extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color colors;
  final FontWeight fontWeight;

  Customtext({this.text, this.fontSize, this.colors, this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: fontSize ?? 16,
            color: colors ?? AppColor.dodgetBlue,
            fontWeight: fontWeight ?? FontWeight.normal));
  }
}
