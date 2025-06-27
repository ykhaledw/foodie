import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/shared_widgets/app_button.dart';
import 'package:foodie/core/theming/styles.dart';
import 'package:foodie/features/onboarding/ui/widgets/onbording_text.dart';
import 'package:foodie/generated/l10n.dart';

Widget onboardingComponents(
  BuildContext context, {
  required String onboardingLogo,
  required String onboardingSubtitle,
  required Widget pageIndicator,
  required void Function() onButtonPressed,
  required String buttonText,
  required TextStyle buttonTextStyle,
  required Color buttonColor,
}) {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: Image.asset(onboardingLogo, fit: BoxFit.fitWidth),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            responsiveValue(context, 16),
            0,
            responsiveValue(context, 16),
            responsiveValue(context, 12),
          ),
          child: Column(
            children: [
              verticalSpace(context, 20),
              onboardingText(
                text: S.of(context).getAnythingDelivered,
                style: TextStyles.font28BlackBold,
              ),
              verticalSpace(context, 12),
              onboardingText(
                text: onboardingSubtitle,
                style: TextStyles.font16BlackRegular,
              ),
              const Spacer(),
              pageIndicator,
              verticalSpace(context, 12),
              appButton(
                context,
                onPressed: onButtonPressed,
                buttonText: buttonText,
                textStyle: buttonTextStyle,
                backgroundColor: buttonColor,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
