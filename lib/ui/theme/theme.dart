import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

MaterialColor primaryMaterialColor = const MaterialColor(
  4278854723,
  <int, Color>{
    50: Color.fromRGBO(
      10,
      36,
      67,
      .1,
    ),
    100: Color.fromRGBO(
      10,
      36,
      67,
      .2,
    ),
    200: Color.fromRGBO(
      10,
      36,
      67,
      .3,
    ),
    300: Color.fromRGBO(
      10,
      36,
      67,
      .4,
    ),
    400: Color.fromRGBO(
      10,
      36,
      67,
      .5,
    ),
    500: Color.fromRGBO(
      10,
      36,
      67,
      .6,
    ),
    600: Color.fromRGBO(
      10,
      36,
      67,
      .7,
    ),
    700: Color.fromRGBO(
      10,
      36,
      67,
      .8,
    ),
    800: Color.fromRGBO(
      10,
      36,
      67,
      .9,
    ),
    900: Color.fromRGBO(
      10,
      36,
      67,
      1,
    ),
  },
);

ThemeData myTheme = ThemeData(
  primaryColor: const Color(0xff0a2443),
  primarySwatch: primaryMaterialColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        const Color(0xff0a2443),
      ),
    ),
  ),
  textTheme: GoogleFonts.aBeeZeeTextTheme(),
);
