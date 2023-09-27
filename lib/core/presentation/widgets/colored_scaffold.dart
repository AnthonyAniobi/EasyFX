import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ColoredScaffold extends StatelessWidget {
  const ColoredScaffold({
    super.key,
    this.body,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final List<Widget>? persistentFooterButtons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      persistentFooterButtons: persistentFooterButtons,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: -12.w,
            child: Container(
              width: 35.w,
              height: 35.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFFFD60A).withOpacity(0.3),
                    const Color(0xFFFFD60A).withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.h,
            right: -10.w,
            child: Container(
              width: 35.w,
              height: 35.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFF32D74B).withOpacity(0.3),
                    const Color(0xFF32D74B).withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -15.w,
            left: -15.w,
            child: Container(
              width: 45.w,
              height: 45.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFFF375F).withOpacity(0.3),
                    const Color(0xFFFF375F).withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          body ?? Container(),
        ],
      ),
    );
  }
}
