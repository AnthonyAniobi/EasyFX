import 'package:easyfx/core/enums/currency_type.dart';
import 'package:easyfx/core/presentation/widgets/app_colors.dart';
import 'package:easyfx/features/add_money/presentation/bloc/add_money_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.currencyType,
  });

  final CurrencyType currencyType;

  @override
  Widget build(BuildContext context) {
    bool selected =
        context.read<AddMoneyBloc>().state.currencyType == currencyType;
    return GestureDetector(
      onTap: () {
        context.read<AddMoneyBloc>().add(
              ChangeCurrencyEvent(
                currencyType,
              ),
            );
      },
      child: Container(
        height: 5.h,
        width: 40.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: selected ? AppColors.greenGradient : null,
        ),
        child: Text(
          currencyType.name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: selected
                    ? AppColors.white
                    : Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ),
    );
  }
}
