import 'package:easyfx/core/presentation/widgets/app_colors.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BuildItem extends StatelessWidget {
  const BuildItem({
    super.key,
    required this.iconOrSvg,
    required this.isSelected,
  });

  final Either<IconData, String> iconOrSvg;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Container(
        alignment: Alignment.center,
        height: 5.h,
        margin: EdgeInsets.symmetric(horizontal: 2.w),
        decoration: BoxDecoration(
          gradient: isSelected ? AppColors.greenGradient : null,
          borderRadius: BorderRadius.circular(1.h),
        ),
        child: iconOrSvg.fold(
          (left) => Icon(
            left,
            color: isSelected
                ? AppColors.white
                : Theme.of(context).colorScheme.onPrimary,
          ),
          (right) => SvgPicture.asset(
            right,
            color: isSelected
                ? AppColors.white
                : Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
