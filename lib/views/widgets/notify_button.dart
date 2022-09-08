import 'package:flutter/material.dart';
import 'package:foddies/views/constants/color.dart';

class NotifyButton extends StatelessWidget {
  const NotifyButton({
    Key? key,
    required this.asset,
  }) : super(key: key);
  final String asset;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.0,
      child: Stack(
        children: [
          Image.asset(
            'assets/$asset.png',
            height: 28.0,
          ),
          const Positioned(
            right: 3.0,
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: AppColor.primaryColor,
              child: Text(
                '1',
                style: TextStyle(fontSize: 10.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
