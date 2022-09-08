
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:foddies/controllers/home_controller.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:get/get.dart';

class LocatonButton extends StatelessWidget {
  const LocatonButton({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Obx((() => DropdownButton<String>(
          underline: const SizedBox.shrink(),
          focusColor: Colors.black,
          // iconSize: 20.0,
          icon: Image.asset(
            'assets/down.png',
            height: 30.0,
            color: AppColor.whiteColor,
          ),
          value: homeController.seletedLanguage.value,
          //elevation: 5,
          borderRadius: BorderRadius.circular(10.0),
          dropdownColor: AppColor.primaryColor.withOpacity(0.7),
          iconEnabledColor: AppColor.whiteColor,
          items: <String>[
            'Select Language',
            'Dhaka',
            'Narsingdi'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                    color: Colors.white, fontSize: 19.0),
              ),
            );
          }).toList(),
          hint: const Text(
            "Select Language",
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          onChanged: (value) {
            homeController.seletedLanguage.value = value!;
          },
        )));
  }
}