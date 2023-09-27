import 'package:easyfx/core/presentation/widgets/build_item.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<Either<IconData, String>> items;
  final ValueChanged<int> onItemSelected;

  const CustomNavBarWidget({
    super.key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(4.w),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) {
          int index = items.indexOf(item);
          return Flexible(
            child: Material(
              child: InkResponse(
                onTap: () => onItemSelected(index),
                child: BuildItem(
                    iconOrSvg: item, isSelected: selectedIndex == index),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
