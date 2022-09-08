import 'package:flutter/material.dart';
import 'package:foddies/models/category_model.dart';
import 'package:foddies/views/constants/color.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key, required this.categoryItem,
  }) : super(key: key);
  final CategoryModel categoryItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.only(right: 4.0, left: 4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundColor: AppColor.backgroundColor,
            child: Image.asset(
              categoryItem.image,
              height: 45.0,
              width: 45.0,
            ),
          ),
          Text(
            categoryItem.title,
            style: const TextStyle(color: AppColor.blackColor),
          )
        ],
      ),
    );
  }
}
