import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:repair/const/const.dart';
import 'package:repair/screens/home_screen/homescreen.dart';
import 'package:repair/style/styles.dart';
import 'package:repair/widgets/cart_list_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(Paddings.lg * 2),
        child: Column(
          children: [
            const CartListTile(
              icon: Icons.microwave,
              title: 'Fix Microwave',
              subtitle: 'Kitchen',
              showShadow: true,
              // price: '52',
            ),
            const CartListTile(
              icon: Icons.microwave,
              title: 'Setup microwave',
              showShadow: false,
              isSecondListTile: true,
              subtitle: '',
              price: '22',
            ),
            const CartListTile(
              icon: Icons.microwave,
              title: 'Repair microwave',
              subtitle: '2 services',
              showShadow: false,
              isSecondListTile: true,
              price: '22',
            ),
            Gap(Paddings.md),
            const CartListTile(
              icon: Icons.microwave,
              title: 'Fix fridge',
              subtitle: '2 services',
              showShadow: false,
              price: '72',
            ),
            Gap(Paddings.md),
            const CartListTile(
              icon: Icons.microwave,
              title: 'Fix Wahser',
              subtitle: '1 service',
              showShadow: false,
              price: '135',
            ),
            Gap(Paddings.md),
            const CartListTile(
              icon: Icons.microwave,
              title: 'Fix Computer',
              subtitle: '1 service',
              showShadow: false,
              price: '30',
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Total price'),
                Text('\$302'),
              ],
            ),
            const Gap(10),
            SizedBox(
              height: 63,
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                      (route) => false);
                },
                child: const Text('Make order'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
