import 'package:easyfx/core/presentation/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class AppColorScheme {
  final ColorScheme lightMode = ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue.shade600,
      onPrimary: AppColors.grey,
      secondary: Colors.orange,
      onSecondary: Colors.orange.shade100,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white70,
      onBackground: Colors.black,
      surface: AppColors.white,
      onSurface: AppColors.black);
  final ColorScheme darkMode = ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.blue.shade200,
      onPrimary: AppColors.grey,
      secondary: Colors.orange.shade200,
      onSecondary: Colors.grey.shade300,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.black,
      onBackground: Colors.white70,
      surface: AppColors.darkGrey,
      onSurface: AppColors.white);
}
