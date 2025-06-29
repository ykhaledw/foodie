import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/shared_widgets/app_text_form_field.dart';
import 'package:foodie/generated/l10n.dart';

Widget signUpForm(
  BuildContext context, {
  required GlobalKey<FormState> formKey,
  required TextEditingController nameController,
  required TextEditingController phoneController,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  bool showPassword = true,
  void Function()? onVisibilityIconTap,
}) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        appTextFormField(
          context,
          controller: nameController,
          hintText: S.of(context).fullName,
          validator: (value) {},
        ),
        verticalSpace(context, 24),
        appTextFormField(
          context,
          controller: phoneController,
          hintText: S.of(context).phoneNumber,
          keyboardType: TextInputType.number,
          validator: (value) {},
        ),
        verticalSpace(context, 24),
        appTextFormField(
          context,
          controller: emailController,
          hintText: S.of(context).email,
          validator: (value) {},
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
          validator: (value) {},
        ),
      ],
    ),
  );
}
