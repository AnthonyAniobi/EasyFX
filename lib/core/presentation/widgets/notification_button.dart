import 'package:easyfx/core/presentation/blocs/navigation_tab/navigation_tab_bloc.dart';
import 'package:easyfx/core/presentation/widgets/app_colors.dart';
import 'package:easyfx/features/notifications/presentation/pages/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
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
            builder: (context) => const NotificationsScreen(),
          ),
        )
            .then((value) {
          context.read<NavigationTabBloc>().add(ShowNavigationTab());
        });
      },
      child: SizedBox(
        width: 10.w,
        height: 10.w,
        child: Stack(
          children: [
            Container(
              width: 10.w,
              height: 10.w,
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(2.w),
              ),
              child: SvgPicture.asset(
                "assets/icons/notification.svg",
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 3.2.w,
                height: 3.2.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 0.5.w,
                  ),
                  color: AppColors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
