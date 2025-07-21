import 'dart:developer';

import 'package:foodie/core/networking/api_result.dart';
import 'package:foodie/features/login/data/models/login_request_model.dart';
import 'package:foodie/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginRepo {
  Future<ApiResult<AuthResponse>> login(
    LoginRequestModel loginRequestModel,
  ) async {
    log('Logging user in repo');
    try {
      final response = await supabase.auth.signInWithPassword(
        email: loginRequestModel.email,
        password: loginRequestModel.password,
      );
      log('User logged in successfully in repo');
      return ApiResult.success(response);
    } on AuthException catch (e) {
      log('Auth exception: ${e.message}');
      return ApiResult.failure(e.message);
    } catch (error) {
      log('Login proccess failed in repo: $error');
      return ApiResult.failure(error.toString());
    }
  }
}
