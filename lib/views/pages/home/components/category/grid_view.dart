import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:foddies/views/pages/home/components/category/category_item.dart';
import 'package:foddies/views/widgets/see_all_button.dart';

SliverToBoxAdapter productCategories(BuildContext context, HomeController homeController) {
    return SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(4.0)),
            margin: const EdgeInsets.all(20.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 2.0),
            width: MediaQuery.of(context).size.height,
            height: 310.0,
            child: Column(
              children: [
                SeeallButton(tap: () {}, title: 'Categories'),
                SizedBox(
                  height: 250.0,
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(0.0),
                      itemCount: homeController.categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 118.0,
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) {
                        return  CategoryItem(categoryItem: homeController.categories[index],);
                      }),
                )
              ],
            ),
          ),
        );
  }

