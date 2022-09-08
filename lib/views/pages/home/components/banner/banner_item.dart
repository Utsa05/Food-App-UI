import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final String item;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              item,
            ),
          ),
        ),
      ),
    );
  }
}
