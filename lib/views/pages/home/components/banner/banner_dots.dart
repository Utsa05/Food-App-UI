// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:get/get.dart';

class BannerDots extends StatelessWidget {
  const BannerDots({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0,
      left: 40.0,
      child: Row(
        children: List.generate(
            homeController.image.length,
            (index) => Obx(() => Container(
                  margin: const EdgeInsets.only(right: 3.0),
                  width: 16.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                      color: homeController.getCurrentPage() == index
                          ? AppColor.primaryColor
                          : AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(5.0)),
                ))),
      ),
    );
  }
}

class Dots extends StatelessWidget {
  const Dots({Key? key, required this.homeController}) : super(key: key);
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          homeController.promtionimage.length,
          (index) => Obx(() => Container(
                margin: const EdgeInsets.only(right: 3.0),
                width: 16.0,
                height: 5.0,
                decoration: BoxDecoration(
                    color: homeController.getPromtionCurrentPage() == index
                        ? AppColor.primaryColor
                        : AppColor.backgroundColor,
                    borderRadius: BorderRadius.circular(5.0)),
              ))),
    );
  }
}
