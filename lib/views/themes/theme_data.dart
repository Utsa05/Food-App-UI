// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:foddies/views/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
      primaryColor: AppColor.primaryColor,
      // visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(),
        headline3: GoogleFonts.poppins(),
        headline6: GoogleFonts.poppins(),
        subtitle1: GoogleFonts.poppins(),
        subtitle2: GoogleFonts.poppins(),
      ),
      scaffoldBackgroundColor: AppColor.backgroundColor,
      cardTheme: const CardTheme(elevation: 1.0));
}
