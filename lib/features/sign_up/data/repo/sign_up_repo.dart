import 'dart:developer';

import 'package:foodie/core/networking/api_result.dart';
import 'package:foodie/features/sign_up/data/models/sign_up_request.dart';
import 'package:foodie/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpRepo {
  Future<ApiResult<AuthResponse>> signUp(SignUpRequest signUpRequest) async {
    log('Signing up user in repo');
    try {
      final response = await supabase.auth.signUp(
        email: signUpRequest.email,
        password: signUpRequest.password,
      );
      log('User signed up in repo');
      return ApiResult.success(response);
    } catch (error) {
      log('Failure in siging user up in repo: $error');
      return ApiResult.failure(error.toString());
    }
  }
}
