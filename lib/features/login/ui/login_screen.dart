import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodie/core/shared_widgets/app_button.dart';
import 'package:foodie/core/theming/styles.dart';
import 'package:foodie/features/login/ui/widgets/dont_have_an_account_text.dart';
import 'package:foodie/features/login/ui/widgets/forgot_password.dart';
import 'package:foodie/features/login/ui/widgets/login_form.dart';
import 'package:foodie/generated/l10n.dart';

import '../../../core/helpers/spacing.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> loginFormKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(S.of(context).login, style: TextStyles.font18BlackBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          responsiveValue(context, 16),
          responsiveValue(context, 20),
          responsiveValue(context, 16),
          0,
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                S.of(context).welcomeBack,
                style: TextStyles.font28BlackBold,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(context, 24),
            loginForm(
              context,
              formKey: loginFormKey,
              emailController: emailController,
              passwordController: passwordController,
              showPassword: isPassword,
              onVisibilityIconTap: () {
                setState(() {
                  isPassword = !isPassword;
                });
              },
            ),
            verticalSpace(context, 16),
            forgotPassword(context),
            verticalSpace(context, 24),
            appButton(
              context,
              onPressed: () {
                validateThenLogin();
              },
              buttonText: S.of(context).login,
              textStyle: TextStyles.font16BlackBold,
            ),
            verticalSpace(context, 16),
            dontHaveAnAccountText(context),
          ],
        ),
      ),
    );
  }

  void validateThenLogin() {
    if (loginFormKey.currentState!.validate()) {
      log('send login request');
    }
  }
}
