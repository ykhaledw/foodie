import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/shared_widgets/app_text_form_field.dart';
import '../../../../generated/l10n.dart';

Widget loginForm(BuildContext context,{
  required GlobalKey<FormState> formKey,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  bool showPassword = true,
  void Function()? onVisibilityIconTap,
}){
  return Form(
    key: formKey,
    child: Column(
      children: [
        verticalSpace(context, 24),
        appTextFormField(
          context,
          controller: emailController,
          hintText: S.of(context).email,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).enterYourEmail;
            }
          },
        ),
        verticalSpace(context, 24),
        appTextFormField(
          context,
          controller: passwordController,
          hintText: S.of(context).password,
          obscureText: showPassword,
          suffixIcon: GestureDetector(
            onTap: onVisibilityIconTap,
            child: Icon(showPassword ? Icons.visibility_off : Icons.visibility),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).createYourPassword;
            }
          },
        ),
      ],
    ),
  );
}