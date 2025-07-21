import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodie/generated/l10n.dart';

import '../../../../core/theming/styles.dart';

Widget forgotPassword(BuildContext context) {
  return GestureDetector(
    onTap: () {
      log('This user forgot their password');
    },
    child: SizedBox(
      width: double.infinity,
      child: Text(
        S.of(context).forgotPassword,
        style: TextStyles.font14BrownRegular,
        textAlign: TextAlign.start,
      ),
    ),
  );
}
