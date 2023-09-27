import 'package:easyfx/core/theme/data/color_scheme.dart';
import 'package:easyfx/core/theme/data/text_theme.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    colorScheme: AppColorScheme().lightMode,
    textTheme: AppTextTheme().lightTheme,
  );

  final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF000000),
    colorScheme: AppColorScheme().darkMode,
    textTheme: AppTextTheme().darkTheme,
  );
}
