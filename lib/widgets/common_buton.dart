import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CommonButton extends StatelessWidget {
  final Color color;
  final Widget child;
  final bool elevated;
  final Color? borderColor;
  final VoidCallback onPressed;
  final bool isAGradieantButton;

  const CommonButton({
    super.key,
    required this.color,
    required this.child,
    this.elevated = false,
    this.isAGradieantButton = false,
    this.borderColor = Colors.transparent,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: isAGradieantButton
            ? BoxDecoration(
                border: Border.all(color: borderColor ?? greyBorder),
                color: color,
                gradient: primaryGradient,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    paddingLarge.h,
                  ),
                ),
                boxShadow: elevated
                    ? [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: const Offset(2, 4),
                        ),
                      ]
                    : null,
              )
            : BoxDecoration(
                border: Border.all(color: borderColor ?? greyBorder),
                color: color,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    paddingLarge.h,
                  ),
                ),
                boxShadow: elevated
                    ? [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: const Offset(2, 4),
                        ),
                      ]
                    : null,
              ),
        height: SizeUtils.height * (48 / 800),
        width: SizeUtils.width * (328 / 360),
        child: child,
      ),
    );
  }
}
