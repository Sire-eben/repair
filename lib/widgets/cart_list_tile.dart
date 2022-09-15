import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:repair/style/styles.dart';

class CartListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? price;
  final bool? showPrice;
  final bool showShadow;
  final bool? isSecondListTile;

  const CartListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.price,
      this.showPrice = false,
      required this.showShadow,
      this.isSecondListTile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.maxFinite,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.lightPurple,
          borderRadius: isSecondListTile == true
              ? BorderRadius.circular(0)
              : BorderRadius.circular(12),
          boxShadow: [
            showShadow == true
                ? BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 6,
                    spreadRadius: 3,
                  )
                : const BoxShadow(),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isSecondListTile == true
              ? const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.error,
                    color: Colors.redAccent,
                    size: 28,
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightWhite,
                  ),
                  child: const Icon(
                    Icons.microwave,
                    color: AppColors.lightPurple,
                  ),
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              isSecondListTile == true
                  ? const SizedBox()
                  : Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                price == null ? '' : '\$$price',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(12),
              isSecondListTile == true
                  ? const SizedBox()
                  : const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    )
            ],
          )
        ],
      ),
    );
  }
}
