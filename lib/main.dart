import 'package:e_commerce/shared/bottom_nav_v1/bottom_wrapper.dart';
import 'package:e_commerce/shared/bottom_nav_v2.dart';
import 'package:e_commerce/shared/screen_size.dart';
import 'package:e_commerce/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const BottomNavV2(),
    );
  }
}
