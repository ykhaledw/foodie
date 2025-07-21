import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/features/login/data/repo/login_repo.dart';
import 'package:foodie/features/login/logic/cubit/login_cubit.dart';
import 'package:foodie/features/login/ui/login_screen.dart';
import 'package:foodie/features/onboarding/ui/onboarding_screen.dart';
import 'package:foodie/features/sign_up/data/repo/sign_up_repo.dart';

import '../../features/sign_up/logic/cubit/sign_up_cubit.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => SignUpCubit(SignUpRepo()),
                child: const SignUpScreen(),
              ),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => LoginCubit(LoginRepo()),
                child: const LoginScreen(),
              ),
        );

      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text('No route found'))),
        );
    }
  }
}
