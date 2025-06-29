import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/core/theming/styles.dart';

Widget appTextFormField(
  BuildContext context, {
  required TextEditingController controller,
  required String hintText,
  required Function(String?) validator,
  bool? obscureText,
  TextStyle? inputStyle,
  TextStyle? hintStyle,
  EdgeInsetsGeometry? contentPadding,
  InputBorder? enabledBorder,
  InputBorder? focusedBorder,
  InputBorder? errorBorder,
  InputBorder? focusedErrorBorder,
  TextInputType? keyboardType,
  Widget? suffixIcon,
  void Function(String)? onChanged,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      isDense: true,
      alignLabelWithHint: true,
      fillColor: AppColors.primaryColor,
      filled: true,
      enabledBorder:
          enabledBorder ?? mainBorder(context, borderSide: BorderSide.none),
      focusedBorder: focusedBorder ?? mainBorder(context),
      errorBorder:
          errorBorder ?? mainBorder(context, borderColor: AppColors.red),
      focusedErrorBorder: focusedErrorBorder ?? mainBorder(context),
      hintText: hintText,
      hintStyle: hintStyle ?? TextStyles.font16BrownRegular,
      contentPadding:
          contentPadding ??
          EdgeInsetsDirectional.only(
            top: responsiveValue(context, 16),
            bottom: responsiveValue(context, 16),
            start: responsiveValue(context, 16),
          ),
      suffixIcon: suffixIcon,
    ),
    style: inputStyle ?? TextStyles.font16BrownRegular,
    validator: (value) => validator(value),
    onChanged: onChanged,
    obscureText: obscureText ?? false,
    keyboardType: keyboardType,
  );
}

OutlineInputBorder mainBorder(
  BuildContext context, {
  BorderSide? borderSide,
  Color? borderColor,
}) => OutlineInputBorder(
  borderRadius: BorderRadius.circular(responsiveValue(context, 12)),
  borderSide:
      borderSide ??
      BorderSide(
        color: borderColor ?? AppColors.brown.withValues(alpha: 1),
        width: 0.5,
      ),
);
