import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:repair/const/const.dart';
import 'package:repair/screens/cart_screen/cart.dart';
import 'package:repair/style/styles.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: const Text(
          'Fix Microwave',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/login_background.png"))),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 500,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.lightRed.withOpacity(.4),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Image.asset('assets/images/microwave.png'),
                ),
                Gap(Paddings.lg),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 250,
                            height: 63,
                            decoration: BoxDecoration(
                              color: AppColors.lightRed.withOpacity(.4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'Reviews',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: 90,
                              height: 63,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.sms_rounded,
                                color: Colors.white,
                                size: 28,
                              )),
                        ],
                      ),
                      Gap(Paddings.lg),
                      Container(
                        height: 63,
                        width: double.maxFinite,
                        padding:
                            EdgeInsets.symmetric(horizontal: Paddings.lg * 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              // spreadRadius: 2,
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Repair'),
                              Text('\$52'),
                            ]),
                      ),
                      Gap(Paddings.lg),
                      Container(
                        height: 63,
                        width: double.maxFinite,
                        padding:
                            EdgeInsets.symmetric(horizontal: Paddings.lg * 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              // spreadRadius: 2,
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Setup'),
                              Text('\$12'),
                            ]),
                      ),
                      Gap(Paddings.lg),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartScreen()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 63,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    // spreadRadius: 2,
                                    color: Colors.grey.withOpacity(.5),
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              child: const Text(
                                'Order Repair',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 63,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  // spreadRadius: 2,
                                  color: Colors.grey.withOpacity(.5),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            child: const Text(
                              'Order Setup',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
