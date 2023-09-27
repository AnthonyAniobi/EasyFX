import 'package:flutter/material.dart';

class AppColors {
  static Color green = const Color(0xFF32D74B);
  static Color orange = const Color(0xFFFFD60A);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color grey = const Color(0xFFAAAAAC); //Color(0xFF8E8E93);
  static Color darkGrey = const Color(0xFF1C1C1E);

  static Gradient greenGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      orange,
      green,
    ],
  );
}
