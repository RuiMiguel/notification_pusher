import 'package:flutter/material.dart';
import 'package:pusher/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white),
    scaffoldBackgroundColor: bgColor,
    canvasColor: secondaryColor,
  );
}
