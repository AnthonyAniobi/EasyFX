import 'package:easyfx/core/presentation/blocs/navigation_tab/navigation_tab_bloc.dart';
import 'package:easyfx/features/settings/presentation/pages/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<NavigationTabBloc>().add(HideNavigationTab());
        Navigator.of(context)
            .push(
          MaterialPageRoute(
            builder: (context) => const SettingsScreen(),
          ),
        )
            .then((value) {
          context.read<NavigationTabBloc>().add(ShowNavigationTab());
        });
      },
      child: Container(
        width: 10.w,
        height: 10.w,
        padding: EdgeInsets.all(2.w),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(2.w),
        ),
        child: SvgPicture.asset(
          "assets/icons/settings.svg",
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
