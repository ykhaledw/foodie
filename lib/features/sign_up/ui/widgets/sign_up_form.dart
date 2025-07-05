import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/shared_widgets/app_text_form_field.dart';
import 'package:foodie/features/sign_up/ui/widgets/checkbox_form_field.dart';
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
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).enterYourName;
            }
          },
        ),
        verticalSpace(context, 24),
        appTextFormField(
          context,
          controller: phoneController,
          hintText: S.of(context).phoneNumber,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).enterYourPhoneNumber;
            }
          },
        ),
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
        verticalSpace(context, 28),
        CheckboxFormField(
          title: S.of(context).termsAndPrivacyAgreement,
          validator: (value) {
            if (value == false) {
              return S.of(context).youShouldAgreeOnTerms;
            }
            return null;
          },
        ),
      ],
    ),
  );
}
