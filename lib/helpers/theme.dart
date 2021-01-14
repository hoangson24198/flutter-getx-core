import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static final Color bondiBlue = Color.fromRGBO(0, 132, 180, 1.0);
  static final Color cerulean = Color.fromRGBO(0, 172, 237, 1.0);
  static final Color spindle = Color.fromRGBO(192, 222, 237, 1.0);
  static final Color white = Color.fromRGBO(255, 255, 255, 1.0);
  static final Color black = Color.fromRGBO(0, 0, 0, 1.0);
  static final Color woodsmoke = Color.fromRGBO(20, 23, 2, 1.0);
  static final Color woodsmoke_50 = Color.fromRGBO(20, 23, 2, 0.5);
  static final Color mystic = Color.fromRGBO(230, 236, 240, 1.0);
  static final Color dodgetBlue = Color.fromRGBO(29, 162, 240, 1.0);
  static final Color dodgetBlue_50 = Color.fromRGBO(29, 162, 240, 0.5);
  static final Color gray = Color.fromRGBO(101, 119, 133, 1.0);
  static final Color ceriseRed = Color.fromRGBO(224, 36, 94, 1.0);
  static final Color gray50 = Color.fromRGBO(101, 118, 133, 0.5);
}
class TitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextOverflow overflow;
  const TitleText(
      this.text, {
        Key key,
        this.fontSize = 18,
        this.color = Colors.black,
        this.fontWeight = FontWeight.w800,
        this.textAlign = TextAlign.center,
        this.overflow = TextOverflow.visible,
      }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.muli(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}