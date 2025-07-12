import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

Widget dontHaveAnAccountText(BuildContext context) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: S.of(context).dontHaveAnAccount,
          style: TextStyles.font14BrownRegular,
        ),
        TextSpan(
          text: ' ${S.of(context).signUp}',
          style: TextStyles.font14BrownRegular,
          recognizer:
              TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamedAndRemoveUntil(
                    Routes.signUpScreen,
                    predicate: (route) => false,
                  );
                },
        ),
      ],
    ),
  );
}
