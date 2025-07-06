import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:foodie/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:foodie/generated/l10n.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

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
            log('Navigate to home screen');
            context.pop();

          case SignUpFailure failure:
            context.pop();
            showDialog(
              context: context,
              builder:
                  (context) => AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    backgroundColor: AppColors.primaryColor,
                    icon: const Icon(Icons.error, color: Colors.red, size: 32),
                    content: Text(
                      failure.error,
                      style: TextStyles.font16BlackRegular,
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(
                          S.of(context).gotIt,
                          style: TextStyles.font16BlackRegular,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
            );

          default:
            log('Failure!!!!!!!!!');
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
