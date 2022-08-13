import 'package:flutter/material.dart';

Widget homePageHeaderText(String text, double fontSize) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 22),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
