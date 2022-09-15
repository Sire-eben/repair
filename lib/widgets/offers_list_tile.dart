import 'package:flutter/material.dart';
import 'package:repair/screens/details/details_screen.dart';
import 'package:repair/style/styles.dart';

class CustomListtile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const CustomListtile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailsScreen(),
          ),
        );
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      tileColor: AppColors.lightPurple.withOpacity(.35),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      leading: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.lightPurple),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
      style: ListTileStyle.drawer,
    );
  }
}
