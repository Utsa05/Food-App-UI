import 'package:flutter/material.dart';
import 'package:foddies/models/product_model.dart';
import 'package:foddies/views/constants/color.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.productItem,
  }) : super(key: key);
  final ProductModel productItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                child: Image.network(
                  productItem.image,
                  height: 150.0,
                  width: 220.0,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10.0,
                left: 10.0,
                child: Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: Icon(
                    Icons.favorite,
                    color: productItem.isFavorite
                        ? AppColor.primaryColor
                        : AppColor.blackColor.withOpacity(0.2),
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 10.0,
                child: Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: Text(
                    '-${productItem.discount}%',
                    style: const TextStyle(
                        color: AppColor.whiteColor, fontSize: 17.0),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: Container(
            width: 220.0,
            color: AppColor.whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productItem.title,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: AppColor.blackColor.withOpacity(0.5)),
                      ),
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            color: AppColor.primaryColor,
                          ),
                          label: Text(productItem.rating.toString(),
                              style: const TextStyle(
                                fontSize: 18.0,
                                color: AppColor.blackColor,
                              )))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 10.0),
                  child: Text(
                    productItem.description,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: AppColor.blackColor),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10.0, top: 7.0),
                        child: Row(
                          children: [
                            Text(
                              '\$${productItem.currentPrice.toString()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                  color: AppColor.primaryColor),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Stack(
                              children: [
                                Text(
                                  '\$${productItem.previousPrice.toString()}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                      color:
                                          AppColor.blackColor.withOpacity(0.5)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        elevation: 0.0,
                        padding: const EdgeInsets.all(0.0),
                        minWidth: 50,
                        height: 50,
                        color: AppColor.primaryColor,
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                          color: AppColor.whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ProductItemAll extends StatelessWidget {
  const ProductItemAll({
    Key? key,
    required this.productItem,
  }) : super(key: key);
  final ProductModel productItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                child: Image.network(
                  productItem.image,
                  height: 115.0,
                  width: 220.0,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10.0,
                left: 10.0,
                child: Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: Icon(
                    Icons.favorite,
                    color: productItem.isFavorite
                        ? AppColor.primaryColor
                        : AppColor.blackColor.withOpacity(0.2),
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 10.0,
                child: Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: Text(
                    '-${productItem.discount}%',
                    style: const TextStyle(
                        color: AppColor.whiteColor, fontSize: 17.0),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: Container(
            color: AppColor.whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productItem.title,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: AppColor.blackColor.withOpacity(0.5)),
                      ),
                      SizedBox(
                        height: 30.0,
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star,
                              size: 15,
                              color: AppColor.primaryColor,
                            ),
                            label: Text(productItem.rating.toString(),
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: AppColor.blackColor,
                                ))),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 10.0),
                  child: Text(
                    productItem.description,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                        color: AppColor.blackColor),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10.0, top: 7.0),
                        child: Row(
                          children: [
                            Text(
                              '\$${productItem.currentPrice.toString()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                  color: AppColor.primaryColor),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Stack(
                              children: [
                                Text(
                                  '\$${productItem.previousPrice.toString()}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                      color:
                                          AppColor.blackColor.withOpacity(0.5)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        elevation: 0.0,
                        padding: const EdgeInsets.all(0.0),
                        minWidth: 35,
                        height: 35,
                        color: AppColor.primaryColor,
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                          color: AppColor.whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
