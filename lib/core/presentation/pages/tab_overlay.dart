import 'package:easyfx/core/presentation/blocs/navigation_tab/navigation_tab_bloc.dart';
import 'package:easyfx/core/presentation/widgets/custom_navbar_widget.dart';
import 'package:easyfx/features/add_money/presentation/pages/add_money_screen.dart';
import 'package:easyfx/features/home/presentation/pages/home_screen.dart';
import 'package:easyfx/features/transactions/presentation/pages/transactions_screen.dart';
import 'package:easyfx/features/transfer/presentation/pages/transfer_screen.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class TabOverlay extends StatelessWidget {
  TabOverlay({super.key});

  final List<Either<IconData, String>> navbarItems = [
    const Right("assets/icons/bank.svg"),
    const Left(Icons.add),
    const Right("assets/icons/chart.svg"),
  ];

  final List<Widget> screens = [
    const HomeScreen(),
    const AddMoneyScreen(),
    const TransactionsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationTabBloc, NavigationTabState>(
      builder: (context, state) {
        return PersistentTabView.custom(
          context,
          controller: state.tabController,
          itemCount: navbarItems.length,
          screens: screens,
          backgroundColor: Theme.of(context).colorScheme.surface,
          confineInSafeArea: true,
          hideNavigationBar: state is NavigationTabHidden,
          handleAndroidBackButtonPress: true,
          customWidget: (navBarEssentials) => CustomNavBarWidget(
            items: navbarItems,
            selectedIndex: state.tabController.index,
            onItemSelected: (index) {
              context.read<NavigationTabBloc>().add(ChangeNavigationTab(index));
            },
          ),
        );
      },
    );
  }
}
