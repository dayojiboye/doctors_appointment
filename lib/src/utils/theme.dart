import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kHeader = Color(0XFF0D1B34);
const Color kPrimary = Color(0XFF8696BB);
const Color kWhite = Color(0XFFFFFFFF);
const Color kRed = Color(0XFFFF0000);
const Color kIconBg = Color(0XFFFAFAFA);
const Color kDeepBlue = Color(0XFF4894FE);
const Color kLightBlue = Color(0xFF63B4FF);
const Color kOrange = Color(0XFFFEB052);

themeData(context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      useMaterial3: false,
      primaryColor: kPrimary,
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //   selectedItemColor: kLightBlue,
      // ),
    );
