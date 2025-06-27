import 'package:flutter/material.dart';

double responsiveValue(BuildContext context, double value) =>
    (MediaQuery.of(context).size.width) * (value / 375);

SizedBox verticalSpace(BuildContext context, double height) => SizedBox(
      height: responsiveValue(context, height),
    );

SizedBox horizontalSpace(BuildContext context, double width) => SizedBox(
      width: responsiveValue(context, width),
    );
