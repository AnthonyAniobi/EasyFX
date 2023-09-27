import 'package:easyfx/core/presentation/widgets/notification_button.dart';
import 'package:easyfx/core/presentation/widgets/settings_button.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget {
  const MainAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SettingsButton(),
        Column(
          children: [
            Text(
              "Anthony Aniobi",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "2039239",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const NotificationsButton(),
      ],
    );
  }
}
