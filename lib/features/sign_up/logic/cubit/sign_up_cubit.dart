import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/networking/api_result.dart';
import 'package:foodie/features/sign_up/data/models/sign_up_request.dart';
import 'package:foodie/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:foodie/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:foodie/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;
  SignUpCubit(this.signUpRepo) : super(SignUpState.initial());

  void signUp(SignUpRequest signUpRequest) async {
    log('Siging user in cubit');
    emit(SignUpState.signUpLoading());
    final response = await signUpRepo.signUp(signUpRequest);
    switch (response) {
      case Success<AuthResponse> data:
        log('User signed up in cubit');
        supabase.from('users').insert({
          'id': data.data.user!.id,
          'full_name': 'New user',
          'created_at': data.data.user!.createdAt,
          'phone': data.data.user!.phone,
          'email': data.data.user!.email,
          'user_type': data.data.session!.user.role,
        });
        emit(SignUpState.signUpSuccess(data));
      case Failure failure:
        log('Failed to sign user up in cubit: ${failure.message}');
        emit(SignUpState.signUpFailure(error: failure.message));
    }
  }
}
