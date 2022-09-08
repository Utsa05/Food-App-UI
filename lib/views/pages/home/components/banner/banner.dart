// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:foddies/views/pages/home/components/banner/banner_dots.dart';
import 'package:foddies/views/pages/home/components/banner/banner_item.dart';

SliverAppBar productBanners(
    BuildContext context, HomeController homeController) {
  CarouselController carouselController = CarouselController();
  return SliverAppBar(
    backgroundColor: AppColor.backgroundColor,
    //pinned: true,
    expandedHeight: 120.0,
    flexibleSpace: Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider(
            carouselController: carouselController,
            items: homeController.image
                .map(
                  (x) => BannerItem(
                    item: x,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
              initialPage: 0,
              onPageChanged: (index, reason) {
                homeController.setCurrenPage(index);
              },
            ),
          ),
        ),
        BannerDots(homeController: homeController)
      ],
    ),
  );
}
