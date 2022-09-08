import 'package:flutter/material.dart';
import 'package:foddies/views/constants/color.dart';

AppBar seeallproductAppbar() {
  return AppBar(
    toolbarHeight: 80.0,
    elevation: 0.0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25.0))),
    title: const Text(
      "Popular Food",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    leading: const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: CircleAvatar(
        backgroundColor: AppColor.whiteColor,
        radius: 10.0,
        child: Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColor.blackColor,
            size: 20.0,
          ),
        ),
      ),
    ),
    flexibleSpace: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(25.0)),
          ),
        ),
        Positioned(
          top: -60,
          left: 50,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: AppColor.whiteColor.withOpacity(0.1),
          ),
        ),
        Positioned(
          top: -20,
          bottom: -20,
          left: -50,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: AppColor.whiteColor.withOpacity(0.2),
          ),
        )
      ],
    ),
  );
}
