import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:repair/style/styles.dart';
import 'package:repair/widgets/header_text.dart';
import 'package:repair/widgets/list_view_container.dart';
import 'package:repair/widgets/offers_list_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: AppColors.primaryBlack),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              "assets/icons/menu.png",
              height: 12,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_checkout_outlined),
            ),
            const Gap(16)
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                homePageHeaderText("What's Broken?", 24),

                //SEARCH CONTAINER
                Container(
                  width: width,
                  height: 63,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: AppColors.greyColor),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search appliances",
                      hintStyle: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 16,
                      ),
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: AppColors.primaryBlue,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                //OFFERS SECTION
                homePageHeaderText("Offers", 20),

                SizedBox(
                  height: height * .3,
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      listViewContainer(
                          "Valid until August 30th",
                          "Cashback 5% from each repair",
                          AppColors.lightGreen,
                          AppColors.white,
                          "assets/images/offer1.png",
                          height,
                          width),
                      listViewContainer(
                          "Valid until July 2nd",
                          "Sale on appliances repair",
                          AppColors.lightWhite,
                          AppColors.lightPurple,
                          "assets/images/offer2.png",
                          height,
                          width),
                      listViewContainer(
                          "Refer a friend",
                          "Refer a friend and win a cashback",
                          AppColors.lightGreen,
                          AppColors.white,
                          "",
                          height,
                          width)
                    ],
                  ),
                ),

                homePageHeaderText("We can fix it", 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                            color: AppColors.primaryBlack,
                            borderRadius: BorderRadius.circular(16)),
                        child: const Text(
                          "Offers",
                          style: TextStyle(color: AppColors.white),
                        )),
                    offersText("Kitchen"),
                    offersText("Living Room"),
                    offersText("Bathroom"),
                  ],
                ),
                const Gap(16),
                customListTile(Icons.microwave, "Fix Microwave", "Kitchen"),
                const Gap(16),
                customListTile(Icons.tv, "Fix TV set", "Living Room")
              ],
            ),
          ),
        ));
  }
}

Widget offersText(String text) => Text(
      text,
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black45),
    );
