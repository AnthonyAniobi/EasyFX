import 'package:easyfx/core/presentation/widgets/main_appbar.dart';
import 'package:easyfx/features/transactions/data/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              "Transactions",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 1.h),
            Expanded(
                child: GroupedListView<Transaction, String>(
              elements: Transaction.all,
              groupBy: (trans) => trans.day,

              // separator: Container(
              //   height: 4.w,
              //   decoration: BoxDecoration(
              //     color: Theme.of(context).colorScheme.surface,
              //     borderRadius: BorderRadius.vertical(
              //       bottom: Radius.circular(4.w),
              //     ),
              //   ),
              // ),
              itemBuilder: (context, transaction) => Container(
                height: 7.h,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.fromLTRB(4.w, 4.w, 4.w, 0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          transaction.amount.toString(),
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                        ),
                        Text(
                          transaction.time,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              groupSeparatorBuilder: (title) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 5.w),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.fromLTRB(4.w, 4.w, 4.w, 0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(4.w),
                        ),
                      ),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      )),
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
