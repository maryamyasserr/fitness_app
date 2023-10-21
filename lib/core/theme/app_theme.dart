import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  static Color primaryLight = const Color(0xff5D9CEC);
  static Color blackColor = const Color(0xff383838);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color selectedColor = Color(0xff027A48);
  static Color unselectedColor = Color(0xffC8C9CB);

  static ThemeData lightMode = ThemeData(
      primaryColor: primaryLight,
      colorScheme: ColorScheme.fromSeed(
          seedColor: primaryLight,
          primary: primaryLight,
          onPrimary: whiteColor,
          onSecondary: blackColor),
      scaffoldBackgroundColor: whiteColor,
      appBarTheme: AppBarTheme(
          backgroundColor: whiteColor,
          elevation: 0.0,
          toolbarHeight: 70,
          centerTitle: false),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: selectedColor,
          unselectedItemColor: unselectedColor,
          backgroundColor: whiteColor,
        ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.markaziText(
              color: blackColor, fontSize: 40, fontWeight: FontWeight.w800),
          titleMedium: GoogleFonts.milonga(
              color: blackColor, fontSize: 30, fontWeight: FontWeight.w400),
          bodyLarge: GoogleFonts.inter(
              color: blackColor, fontSize: 20, fontWeight: FontWeight.w600),
          bodyMedium: GoogleFonts.inter(
              color: blackColor, fontSize: 18, fontWeight: FontWeight.w400),
          bodySmall: GoogleFonts.inter(
              color: blackColor, fontSize: 16, fontWeight: FontWeight.w500)),
      );
}