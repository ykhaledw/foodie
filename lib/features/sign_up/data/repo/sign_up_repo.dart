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
        data: {
          'full_name': signUpRequest.name,
          'phone': signUpRequest.phone,
          'user_type': signUpRequest.userType,
          'avatar_url': signUpRequest.avatarUrl,
        },
      );
      log('User signed up in repo');
      return ApiResult.success(response);
    } on AuthException catch (e) {
      log('Auth exception: ${e.message}');
      return ApiResult.failure(e.message);
    } catch (error) {
      log('Failure in siging user up in repo: $error');
      return ApiResult.failure(error.toString());
    }
  }
}
