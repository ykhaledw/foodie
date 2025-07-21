import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(AuthResponse loginResponse) = LoginSuccess;
  const factory LoginState.loginFailure({required String error}) = LoginFailure;
}
