import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:igeku/core/constant/constant.dart';
import 'package:sizer/sizer.dart';

final _lightThemeData = ThemeData.light();
final _darkThemeData = ThemeData.dark();

final primaryMaterialTheme = _lightThemeData.copyWith(
    colorScheme: ColorScheme(
      primary: Color(0xff090909),
      primaryContainer: Color(0xff09a5fd),
      secondary: Color(0xffbfbade),
      secondaryVariant: Colors.white,
      background: Color(0xff090909),
      brightness: Brightness.light,
      error: Color(0xff99ff00),
      onBackground: Color(0xff403d40),
      onError: Colors.red,
      onSecondary: Color(0xffffffff),
      onPrimary: Color.fromARGB(255, 39, 39, 39),
      onSurface: Colors.white,
      secondaryContainer: Color(0xffffd200),
      surface:Colors.grey,
    ),
    textTheme: _lightThemeData.textTheme.copyWith(

      
      bodyText1: GoogleFonts.openSans(  fontSize: 13.sp,

          fontWeight: FontWeight.w400,
    ),
      bodyText2: GoogleFonts.montserrat(  fontSize: 13.sp,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
          headline1: GoogleFonts.poppins(textStyle:TextStyle(fontWeight: FontWeight.bold)),
      headline6: TextStyle(fontSize: 18.0, fontFamily: Constants.fontFamily),
      button: TextStyle(fontSize: 16.0, letterSpacing: 1),
      subtitle2: TextStyle(fontFamily: Constants.fontFamily),
      headline3: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.black,
          fontFamily: Constants.fontFamily),
    ));
final darkMaterialTheme = _darkThemeData.copyWith(
  colorScheme: ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.white,
    secondary: Color.fromRGBO(0, 149, 246, 1),
    secondaryVariant: Colors.white,
    background: Colors.white,
    brightness: Brightness.light,
    error: Colors.red,
    onBackground: Colors.white,
    onError: Colors.red,
    onSecondary: Colors.white,
    onPrimary: Colors.black,
    onSurface: Colors.white,
    surface: Color.fromRGBO(0, 149, 246, 1),
  ),
  textTheme: _darkThemeData.textTheme.apply(
    fontFamily: 'Open Sans',
  ),
);

final primaryCupertinoTheme = CupertinoThemeData(
  primaryColor: CupertinoDynamicColor.withBrightness(
    color: Colors.purple,
    darkColor: Colors.cyan,
  ),
);

