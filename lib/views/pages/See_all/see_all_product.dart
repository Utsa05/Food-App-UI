import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/views/pages/See_all/components/app_bar.dart';
import 'package:foddies/views/pages/home/components/products/product_item.dart';
import 'package:get/get.dart';

class SeeAllProduct extends StatelessWidget {
  const SeeAllProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: seeallproductAppbar(),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10.0,
              mainAxisExtent: 200.0,
              crossAxisCount: 2,
              crossAxisSpacing: 10.0),
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(10.0),
          scrollDirection: Axis.vertical,
          itemCount: homeController.products.length,
          itemBuilder: (context, index) => ProductItemAll(
                productItem: homeController.products[index],
              )),
    );
  }
}
