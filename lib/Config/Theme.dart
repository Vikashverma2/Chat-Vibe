import 'package:chat_vibe/Config/Colors.dart';
import 'package:flutter/material.dart';

var lighTheme = ThemeData();
var darkTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xff191B28),
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    
    primary: dBackgroundColor,
    secondary: dSecondryColor,
    primaryContainer: dContainerColor,
    onPrimary: dPrimeryTextColor,
    onSecondary: dSecondryTextColor,
  ),

textTheme: TextTheme(
  headlineLarge: TextStyle(
    fontSize: 32,
    color: dPrimeryTextColor,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700

  ),
  headlineMedium: TextStyle(
    fontSize:20,
    color: dPrimeryTextColor,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w500

  ),
  headlineSmall: TextStyle(
    fontSize:18,
    color: dPrimeryTextColor,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400

  ),
),


);
