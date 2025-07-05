// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>()';
}


}

/// @nodoc
class $SignUpStateCopyWith<T,$Res>  {
$SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}


/// @nodoc


class _Initial<T> implements SignUpState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.initial()';
}


}




/// @nodoc


class SignUpLoading<T> implements SignUpState<T> {
  const SignUpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.signUpLoading()';
}


}




/// @nodoc


class SignUpSuccess<T> implements SignUpState<T> {
  const SignUpSuccess(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSuccessCopyWith<T, SignUpSuccess<T>> get copyWith => _$SignUpSuccessCopyWithImpl<T, SignUpSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState<$T>.signUpSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignUpSuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpSuccessCopyWith(SignUpSuccess<T> value, $Res Function(SignUpSuccess<T>) _then) = _$SignUpSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignUpSuccessCopyWithImpl<T,$Res>
    implements $SignUpSuccessCopyWith<T, $Res> {
  _$SignUpSuccessCopyWithImpl(this._self, this._then);

  final SignUpSuccess<T> _self;
  final $Res Function(SignUpSuccess<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignUpSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SignUpFailure<T> implements SignUpState<T> {
  const SignUpFailure({required this.error});
  

 final  String error;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpFailureCopyWith<T, SignUpFailure<T>> get copyWith => _$SignUpFailureCopyWithImpl<T, SignUpFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SignUpState<$T>.signUpFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SignUpFailureCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpFailureCopyWith(SignUpFailure<T> value, $Res Function(SignUpFailure<T>) _then) = _$SignUpFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SignUpFailureCopyWithImpl<T,$Res>
    implements $SignUpFailureCopyWith<T, $Res> {
  _$SignUpFailureCopyWithImpl(this._self, this._then);

  final SignUpFailure<T> _self;
  final $Res Function(SignUpFailure<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SignUpFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
