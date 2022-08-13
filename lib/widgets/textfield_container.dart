import 'package:flutter/material.dart';
import 'package:repair/style/styles.dart';

Widget textFieldContainer(String hintText, IconData iconData) {
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 10,
    ),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          offset: Offset(6, 4),
          color: Color.fromRGBO(0, 0, 0, 0.12),
          blurRadius: 10,
        ),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          iconData,
          color: AppColors.primaryBlue,
        ),
        prefixIconColor: AppColors.primaryBlue,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}
