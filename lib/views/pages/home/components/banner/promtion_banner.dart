
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:foddies/views/pages/home/components/banner/banner_dots.dart';
import 'package:foddies/views/pages/home/components/banner/banner_item.dart';

SliverToBoxAdapter promotionBanner(BuildContext context,HomeController homeController) {
  return SliverToBoxAdapter(
    child: Container(
      color: AppColor.whiteColor,
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 160.0,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              items: homeController.promtionimage
                  .map(
                    (x) => BannerItem(
                      item: x,
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                //autoPlay: true,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  homeController.setProductCurrenPage(index);
                },
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .3, top: 10.0),
              width: double.infinity,
              child: Dots(homeController: homeController))
        ],
      ),
    ),
  );
}
