import 'package:flutter/material.dart';
import 'package:foddies/views/constants/color.dart';

class SeeallButton extends StatelessWidget {
  const SeeallButton({
    Key? key,
    required this.tap,
    required this.title,
  }) : super(key: key);
  final GestureTapCallback tap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: AppColor.blackColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w400),
        ),
        TextButton(
            onPressed: tap,
            child: const Text(
              'See all',
              style: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ))
      ],
    );
  }
}
