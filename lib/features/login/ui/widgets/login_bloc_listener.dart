import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/features/login/logic/cubit/login_cubit.dart';
import 'package:foodie/features/login/logic/cubit/login_state.dart';

import '../../../../core/theming/colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is LoginLoading ||
              current is LoginSuccess ||
              current is LoginFailure,
      listener: (context, state) {
        switch (state) {
          case LoginLoading _:
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(color: AppColors.black),
                  ),
            );
          case LoginSuccess _:
            log('Navigate to home screen');
            context.pop();
          case LoginFailure failure:
            log('Login failure');
            context.pop();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(failure.error)));
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
