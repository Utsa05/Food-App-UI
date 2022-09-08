import 'package:flutter/material.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:foddies/views/constants/size.dart';

class Circles extends StatelessWidget {
  const Circles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -AppSize.size_72 - 20,
      left: -30,
      child: CircleAvatar(
        radius: 134.0,
        backgroundColor: AppColor.primaryColor,
        child: Stack(
          children: [
            Positioned(
              top: -30,
              left: -1,
              child: CircleAvatar(
                radius: 120.0,
                backgroundColor: AppColor.whiteColor.withOpacity(0.05),
              ),
            ),
            Positioned(
              top: -60,
              left: 3,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: AppColor.whiteColor.withOpacity(0.1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
