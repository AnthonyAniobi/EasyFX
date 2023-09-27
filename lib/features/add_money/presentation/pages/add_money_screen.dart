import 'package:easyfx/core/enums/currency_type.dart';
import 'package:easyfx/core/presentation/widgets/app_colors.dart';
import 'package:easyfx/core/presentation/widgets/main_appbar.dart';
import 'package:easyfx/features/add_money/presentation/bloc/add_money_bloc.dart';
import 'package:easyfx/features/add_money/presentation/widgets/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddMoneyScreen extends StatelessWidget {
  const AddMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddMoneyBloc, AddMoneyState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h),
                const MainAppbar(),
                SizedBox(height: 2.h),
                Text(
                  "Add Money: ",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: CurrencyType.values
                      .map(
                        (e) => TabButton(
                          currencyType: e,
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: 1.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Convert your Naira to CFA",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "Naira: ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: 1.h),
                      CustomTextField()
                    ],
                  ),
                ),
              ],
            ),
          )),
        );
      },
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.keyboardType,
    this.onChange,
  });

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.green),
          borderRadius: BorderRadius.circular(4.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.green),
          borderRadius: BorderRadius.circular(4.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.green),
          borderRadius: BorderRadius.circular(4.w),
        ),
      ),
    );
  }
}
