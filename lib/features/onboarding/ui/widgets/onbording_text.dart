import 'package:flutter/material.dart';

Widget onboardingText({required String text, required TextStyle? style}) =>
    SizedBox(
      width: double.infinity,
      child: Text(
        text,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
