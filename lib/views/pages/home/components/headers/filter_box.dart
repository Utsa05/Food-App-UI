import 'package:flutter/material.dart';
import 'package:foddies/views/constants/color.dart';

class FilterBox extends StatelessWidget {
  const FilterBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
              child: SizedBox(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 20.0),
                  hintText: 'Search your roducts',
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: AppColor.blackColor.withOpacity(0.4),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: AppColor.whiteColor,
                  filled: true),
            ),
          )),
          const SizedBox(
            width: 10.0,
          ),
          Container(
            alignment: Alignment.center,
            height: 65.0,
            width: 50.0,
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(5.0)),
            child: Image.asset(
              'assets/filter.png',
              color: AppColor.whiteColor,
              height: 27.0,
            ),
          )
        ],
      ),
    );
  }
}