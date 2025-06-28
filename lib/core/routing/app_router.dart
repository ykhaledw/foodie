import 'package:flutter/material.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/features/onboarding/ui/onboarding_screen.dart';
import 'package:foodie/features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text('No route found'))),
        );
    }
  }
}
