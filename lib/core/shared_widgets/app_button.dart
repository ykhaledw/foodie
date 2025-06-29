import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/theming/colors.dart';

Widget appButton(
  BuildContext context, {
  double? borderRadius,
  Color? backgroundColor,
  double? horizontalPadding,
  double? verticalPadding,
  double? buttonWidth,
  double? buttonHeight,
  required VoidCallback onPressed,
  required String buttonText,
  required TextStyle textStyle,
  Widget? suffixIcon,
}) {
  return TextButton(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 30),
        ),
      ),
      backgroundColor: WidgetStatePropertyAll(
        backgroundColor ?? AppColors.primaryColor,
      ),
      padding: WidgetStateProperty.all<EdgeInsets>(
        EdgeInsets.symmetric(
          horizontal: responsiveValue(context, horizontalPadding ?? 12),
          vertical: responsiveValue(context, verticalPadding ?? 12),
        ),
      ),
      fixedSize: WidgetStateProperty.all(
        Size(
          responsiveValue(context, buttonWidth ?? double.maxFinite),
          responsiveValue(context, buttonHeight ?? 48),
        ),
      ),
    ),
    onPressed: onPressed,
    child: Row(
      children: [
        const SizedBox(),
        const Spacer(),
        Text(buttonText, style: textStyle),
        const Spacer(),
        suffixIcon ?? const SizedBox.shrink(),
      ],
    ),
  );
}
