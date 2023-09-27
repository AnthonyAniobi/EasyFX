import 'package:easyfx/core/presentation/widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 20.w,
      margin: EdgeInsets.symmetric(vertical: 0.5.h),
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        color: Theme.of(context).colorScheme.surface,
        gradient: AppColors.greenGradient,
      ),
      child: Column(
        children: [
          Text(
            "XOF",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            "XOF",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
