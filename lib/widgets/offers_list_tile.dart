import 'package:flutter/material.dart';
import 'package:repair/style/styles.dart';

Widget customListTile(
  IconData icon,
  String title,
  String subtitle,
) {
  return ListTile(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    tileColor: AppColors.lightPurple.withOpacity(.35),
    contentPadding: const EdgeInsets.all(12),
    leading: Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.lightPurple),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    ),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: const Icon(Icons.arrow_forward_ios),
  );
}
