import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/networking/api_result.dart';
import 'package:foodie/features/login/data/models/login_request_model.dart';
import 'package:foodie/features/login/data/repo/login_repo.dart';
import 'package:foodie/features/login/logic/cubit/login_state.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());

  void login(LoginRequestModel loginRequestModel) async {
    log('Logging user in cubit');
    emit(LoginState.loginLoading());
    final response = await loginRepo.login(loginRequestModel);
    switch (response) {
      case Success<AuthResponse> data:
        log('User logged in successfully in cubit');
        emit(LoginState.loginSuccess(data.data));

      case Failure failure:
        log('Login process failed in cubit: ${failure.message}');
        emit(LoginFailure(error: failure.message));
    }
  }
}
