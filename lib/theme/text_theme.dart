import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.indigo,
    textTheme: GoogleFonts.poppinsTextTheme(),
    useMaterial3: true,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 5,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 15,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: 10,
    ),
  );
}
