// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:foddies/views/pages/home/components/headers/circales.dart';
import 'package:foddies/views/pages/home/components/headers/filter_box.dart';
import 'package:foddies/views/pages/home/components/headers/location_menu_btn.dart';

import 'package:foddies/views/widgets/notify_button.dart';
import 'package:get/get.dart';

SliverAppBar homeHeader(BuildContext context) {
  final HomeController homeController = Get.put(HomeController());
  return SliverAppBar(
    pinned: true,
    floating: true,
    elevation: 0.0,
    expandedHeight: 150.0,
    backgroundColor: AppColor.backgroundColor,
    flexibleSpace: HeaderWidget(homeController: homeController),
  );
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.0,
      child: Stack(
        children: [
          //circales
          const Circles(),

          Positioned(
            right: 20.0,
            bottom: -20.0,
            left: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LocatonButton(homeController: homeController),
                    Row(
                      children: const [
                        NotifyButton(
                          asset: 'bell-ring',
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        NotifyButton(
                          asset: 'shopping-cart',
                        )
                      ],
                    )
                  ],
                ),
                const FilterBox()
              ],
            ),
          )
        ],
      ),
    );
  }
}
