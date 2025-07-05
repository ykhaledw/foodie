import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/shared_widgets/app_button.dart';
import 'package:foodie/core/theming/styles.dart';
import 'package:foodie/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:foodie/generated/l10n.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  bool agreeOnPrivacyTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).signUp, style: TextStyles.font18BlackBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          responsiveValue(context, 16),
          responsiveValue(context, 20),
          responsiveValue(context, 16),
          0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  S.of(context).createAccount,
                  style: TextStyles.font28BlackBold,
                  textAlign: TextAlign.center,
                ),
              ),
              verticalSpace(context, 24),
              signUpForm(
                context,
                formKey: signUpFormKey,
                nameController: nameController,
                emailController: emailController,
                phoneController: phoneController,
                passwordController: passwordController,
                showPassword: isPassword,
                onVisibilityIconTap: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
              ),
              verticalSpace(context, 28),
              appButton(
                context,
                onPressed: () {
                  validateThenSignUp();
                },
                buttonText: S.of(context).signUp,
                textStyle: TextStyles.font16BlackBold,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenSignUp() {
    if (signUpFormKey.currentState!.validate()) {
      log('Sign up this user');
    }
  }
}
