// ignore_for_file: depend_on_referenced_packages

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/models/product_model.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:foddies/views/pages/home/components/banner/banner.dart';
import 'package:foddies/views/pages/home/components/banner/banner_dots.dart';
import 'package:foddies/views/pages/home/components/banner/banner_item.dart';
import 'package:foddies/views/pages/home/components/banner/promtion_banner.dart';
import 'package:foddies/views/pages/home/components/category/grid_view.dart';
import 'package:foddies/views/pages/home/components/headers/header.dart';
import 'package:foddies/views/pages/home/components/products/product_grid.dart';
import 'package:foddies/views/pages/home/components/products/product_item.dart';
import 'package:foddies/views/widgets/see_all_button.dart';
import 'package:foddies/views/widgets/sliver_margin.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = Get.put(HomeController());
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: false,
      child: CustomScrollView(
        slivers: [
          homeHeader(context),
          const Margin(),
          productBanners(context, homeController),
          productCategories(context, homeController),
          productsGrid(homeController, "Popular Food"),
          promotionBanner(context, homeController),
          productsGrid(homeController, "Popular Resturant"),

          //

          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: SeeallButton(tap: () {}, title: "New Arriaval"),
            ),
          ),
          ProductAllGraid(homeController: homeController)
        ],
      ),
    ));
  }
}

class ProductAllGraid extends StatelessWidget {
  const ProductAllGraid({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisExtent: 200.0,
              mainAxisSpacing: 10.0),
          delegate: SliverChildBuilderDelegate(
              childCount: homeController.products.length,
              (context, index) {
            return ProductItemAll(
              productItem: homeController.products[index],
            );
          })),
    );
  }
}
