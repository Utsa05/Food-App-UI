import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/views/pages/See_all/see_all_product.dart';
import 'package:foddies/views/pages/home/components/products/product_item.dart';
import 'package:foddies/views/widgets/see_all_button.dart';

SliverToBoxAdapter productsGrid(
    HomeController homeController, title, BuildContext context) {
  return SliverToBoxAdapter(
    child: SizedBox(
      //color: AppColor.testColor,
      height: 320.0,
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20.0,
              ),
              child: SeeallButton(
                  tap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const SeeAllProduct()));
                  },
                  title: title)),
          const SizedBox(
            height: 4.0,
          ),
          Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: homeController.products.length,
                  itemBuilder: (context, index) => ProductItem(
                        productItem: homeController.products[index],
                      )))
        ],
      ),
    ),
  );
}

SliverToBoxAdapter productsAllGrid(HomeController homeController, title) {
  return SliverToBoxAdapter(
    child: Column(
      children: [
        Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20.0,
            ),
            child: SeeallButton(tap: () {}, title: title)),
        const SizedBox(
          height: 4.0,
        ),
        SliverList(delegate: SliverChildBuilderDelegate((contex, index) {
          return ProductItem(
            productItem: homeController.products[index],
          );
        }))
      ],
    ),
  );
}
