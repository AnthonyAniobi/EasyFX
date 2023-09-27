import 'package:easyfx/core/presentation/widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppTextTheme {
  final TextTheme lightTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.w300,
      color: AppColors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    ),
    bodyMedium: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    ),
    bodySmall: TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    ),
  );

  final TextTheme darkTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),
    headlineSmall: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.w300,
      color: AppColors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    ),
    bodyMedium: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    ),
    bodySmall: TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    ),
  );
}
