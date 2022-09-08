import 'package:flutter/material.dart';
import 'package:foddies/views/constants/string.dart';
import 'package:foddies/views/pages/home/home_page.dart';
import 'package:foddies/views/themes/theme_data.dart';

class Fooddies extends StatelessWidget {
  const Fooddies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
