import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/core/theming/styles.dart';
import 'package:foodie/features/onboarding/ui/widgets/onboarding_components.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final Widget pageIndicator = SmoothPageIndicator(
      effect: ExpandingDotsEffect(
        activeDotColor: Colors.black,
        dotHeight: responsiveValue(context, 7),
        radius: responsiveValue(context, 16),
        dotWidth: responsiveValue(context, 10),
        dotColor: AppColors.black,
      ),
      controller: pageController,
      count: 2,
      onDotClicked: (index) {
        pageController.animateToPage(
          index,
          duration: Durations.medium1,
          curve: Curves.linear,
        );
      },
    );
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            onboardingComponents(
              context,
              onboardingLogo: 'assets/images/onboarding_one.png',
              onboardingSubtitle: S.of(context).onboardingSubtitle,
              buttonTextStyle: TextStyles.font16BlackBold,
              buttonText: S.of(context).continueButton,

              onButtonPressed: () {
                pageController.animateToPage(
                  1,
                  duration: Durations.medium1,
                  curve: Curves.linear,
                );
              },
              pageIndicator: pageIndicator,
              buttonColor: AppColors.pink,
            ),
            onboardingComponents(
              context,
              onboardingLogo: 'assets/images/onboarding_two.png',
              onboardingSubtitle: S.of(context).secondSubtitle,
              buttonTextStyle: TextStyles.font16BlackBold,
              buttonText: S.of(context).getStarted,

              onButtonPressed: () {
                context.pushNamed(Routes.signUpScreen);
              },
              pageIndicator: pageIndicator,
              buttonColor: AppColors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
