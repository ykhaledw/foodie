import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:foodie/features/sign_up/logic/cubit/sign_up_state.dart';

import '../../../../core/theming/colors.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen:
          (previous, current) =>
              current is SignUpLoading ||
              current is SignUpSuccess ||
              current is SignUpFailure,
      listener: (context, state) {
        switch (state) {
          case SignUpLoading _:
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(color: AppColors.black),
                  ),
            );
          case SignUpSuccess _:
            log('Created new user successfully');

          default:
            log('Failure!!!!!!!!!');
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
