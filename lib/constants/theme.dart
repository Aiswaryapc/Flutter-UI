import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uitask/constants/colors.dart';

class AppTheme {
  static final theme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.purple,
      backgroundColor: AppColors.white,
      //scaffoldBackgroundColor:AppColors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme:GoogleFonts.latoTextTheme(
      ).apply(bodyColor: AppColors.white,
        //displayColor: Colors.blue,
      ),

  );
}