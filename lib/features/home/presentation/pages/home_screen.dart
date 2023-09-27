import 'package:easyfx/core/presentation/widgets/function_button.dart';
import 'package:easyfx/core/presentation/widgets/main_appbar.dart';
import 'package:easyfx/features/home/presentation/widgets/line_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: const MainAppbar(),
            ),
            const Expanded(child: LineChartWidget()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "${AppLocalizations.of(context)!.totalBalance}:",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 0.5.h,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '${AppLocalizations.of(context)!.nairaBalance}\n',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: nairaSymbol,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                        TextSpan(
                          text: " 3290",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        TextSpan(
                          text: ".23",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${AppLocalizations.of(context)!.cfaBalance}\n',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: cfaSymbol,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                        TextSpan(
                          text: " 3290328",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        TextSpan(
                          text: ".23",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            GridView(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4.w,
                crossAxisSpacing: 4.w,
                childAspectRatio: 1.5,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                FunctionButton(
                  svgImage: 'exchange',
                  text: "Exchange",
                  onPressed: () {},
                ),
                FunctionButton(
                  svgImage: 'deposit',
                  text: "Deposit",
                  onPressed: () {},
                ),
                FunctionButton(
                  svgImage: 'bank',
                  text: "Withdraw",
                  onPressed: () {},
                ),
                FunctionButton(
                  svgImage: 'recieve',
                  text: "Recieve",
                  onPressed: () {},
                ),
                FunctionButton(
                  svgImage: 'transfer',
                  text: "Transfer",
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 1.h),
          ],
        ),
      ),
    );
  }

  String get nairaSymbol =>
      NumberFormat.simpleCurrency(name: 'NGN').currencySymbol;
  String get cfaSymbol =>
      NumberFormat.simpleCurrency(name: 'XOF').currencySymbol;
}
