import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({
    super.key,
    required this.svgImage,
    required this.text,
    required this.onPressed,
  });

  final String svgImage;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(2.w),
                ),
                child: SvgPicture.asset(
                  "assets/icons/$svgImage.svg",
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Spacer(flex: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
