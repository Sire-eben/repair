import 'package:flutter/material.dart';

Widget listViewContainer(
  String topContainerText,
  String bottomContainerText,
  Color topContainerColor,
  Color bottomContainerColor,
  String image,
  double height,
  double width,
) {
  return Padding(
    padding: const EdgeInsets.only(right: 18.0),
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
          decoration: BoxDecoration(
              color: bottomContainerColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),
          child: Stack(
            // alignment: Alignment.bottomRight,
            children: [
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(36)),
                        image: DecorationImage(image: AssetImage(image))),
                  )),
              Container(
                constraints: BoxConstraints(maxWidth: width * .35),
                padding: const EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  bottomContainerText,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
