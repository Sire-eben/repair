import 'package:flutter/material.dart';
import 'package:repair/style/styles.dart';

Widget listViewContainer(
  String topContainerText,
  String bottomContainerText,
  Color topContainerColor,
  Color bottomContainerColor,
  String image,
  double height,
  double width,
) {
  return Container(
    height: height * .25,
    width: width * .6,
    alignment: Alignment.bottomRight,
    margin: const EdgeInsets.only(right: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      children: [
        //TOP CONTAINER OF LIST
        Container(
          height: height * .075,
          width: width * .6,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: topContainerColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )),
          child: Text(
            topContainerText,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),

        //BOTTOM CONTAINER OF LISTVIEW
        Container(
          height: height * .175,
          width: width * .6,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              color: bottomContainerColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),
          child: Stack(
            // alignment: Alignment.bottomRight,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: width * .4),
                padding: const EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  bottomContainerText,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 120,
                  width: 100,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30)),
                      image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
