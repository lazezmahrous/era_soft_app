// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaySuccess success) success,
    required TResult Function(PayError error) failure,
    required TResult Function() getUserDataLoading,
    required TResult Function(PayUserData userData) getUserDataSuccess,
    required TResult Function(String errMessage) getUserDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaySuccess success)? success,
    TResult? Function(PayError error)? failure,
    TResult? Function()? getUserDataLoading,
    TResult? Function(PayUserData userData)? getUserDataSuccess,
    TResult? Function(String errMessage)? getUserDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaySuccess success)? success,
    TResult Function(PayError error)? failure,
    TResult Function()? getUserDataLoading,
    TResult Function(PayUserData userData)? getUserDataSuccess,
    TResult Function(String errMessage)? getUserDataFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(GetUserDataLoading value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess value) getUserDataSuccess,
    required TResult Function(GetUserDataFailure value) getUserDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetUserDataLoading value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult? Function(GetUserDataFailure value)? getUserDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(GetUserDataLoading value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult Function(GetUserDataFailure value)? getUserDataFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayStateCopyWith<$Res> {
  factory $PayStateCopyWith(PayState value, $Res Function(PayState) then) =
      _$PayStateCopyWithImpl<$Res, PayState>;
}

/// @nodoc
class _$PayStateCopyWithImpl<$Res, $Val extends PayState>
    implements $PayStateCopyWith<$Res> {
  _$PayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PayState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaySuccess success) success,
    required TResult Function(PayError error) failure,
    required TResult Function() getUserDataLoading,
    required TResult Function(PayUserData userData) getUserDataSuccess,
    required TResult Function(String errMessage) getUserDataFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaySuccess success)? success,
    TResult? Function(PayError error)? failure,
    TResult? Function()? getUserDataLoading,
    TResult? Function(PayUserData userData)? getUserDataSuccess,
    TResult? Function(String errMessage)? getUserDataFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaySuccess success)? success,
    TResult Function(PayError error)? failure,
    TResult Function()? getUserDataLoading,
    TResult Function(PayUserData userData)? getUserDataSuccess,
    TResult Function(String errMessage)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(GetUserDataLoading value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess value) getUserDataSuccess,
    required TResult Function(GetUserDataFailure value) getUserDataFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetUserDataLoading value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult? Function(GetUserDataFailure value)? getUserDataFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(GetUserDataLoading value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult Function(GetUserDataFailure value)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PayState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PayState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaySuccess success) success,
    required TResult Function(PayError error) failure,
    required TResult Function() getUserDataLoading,
    required TResult Function(PayUserData userData) getUserDataSuccess,
    required TResult Function(String errMessage) getUserDataFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaySuccess success)? success,
    TResult? Function(PayError error)? failure,
    TResult? Function()? getUserDataLoading,
    TResult? Function(PayUserData userData)? getUserDataSuccess,
    TResult? Function(String errMessage)? getUserDataFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaySuccess success)? success,
    TResult Function(PayError error)? failure,
    TResult Function()? getUserDataLoading,
    TResult Function(PayUserData userData)? getUserDataSuccess,
    TResult Function(String errMessage)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(GetUserDataLoading value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess value) getUserDataSuccess,
    required TResult Function(GetUserDataFailure value) getUserDataFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetUserDataLoading value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult? Function(GetUserDataFailure value)? getUserDataFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(GetUserDataLoading value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult Function(GetUserDataFailure value)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PayState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaySuccess success});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SuccessImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as PaySuccess,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.success});

  @override
  final PaySuccess success;

  @override
  String toString() {
    return 'PayState.success(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaySuccess success) success,
    required TResult Function(PayError error) failure,
    required TResult Function() getUserDataLoading,
    required TResult Function(PayUserData userData) getUserDataSuccess,
    required TResult Function(String errMessage) getUserDataFailure,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaySuccess success)? success,
    TResult? Function(PayError error)? failure,
    TResult? Function()? getUserDataLoading,
    TResult? Function(PayUserData userData)? getUserDataSuccess,
    TResult? Function(String errMessage)? getUserDataFailure,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaySuccess success)? success,
    TResult Function(PayError error)? failure,
    TResult Function()? getUserDataLoading,
    TResult Function(PayUserData userData)? getUserDataSuccess,
    TResult Function(String errMessage)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(GetUserDataLoading value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess value) getUserDataSuccess,
    required TResult Function(GetUserDataFailure value) getUserDataFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetUserDataLoading value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult? Function(GetUserDataFailure value)? getUserDataFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(GetUserDataLoading value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult Function(GetUserDataFailure value)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements PayState {
  const factory Success({required final PaySuccess success}) = _$SuccessImpl;

  PaySuccess get success;

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PayError error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as PayError,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl({required this.error});

  @override
  final PayError error;

  @override
  String toString() {
    return 'PayState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaySuccess success) success,
    required TResult Function(PayError error) failure,
    required TResult Function() getUserDataLoading,
    required TResult Function(PayUserData userData) getUserDataSuccess,
    required TResult Function(String errMessage) getUserDataFailure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaySuccess success)? success,
    TResult? Function(PayError error)? failure,
    TResult? Function()? getUserDataLoading,
    TResult? Function(PayUserData userData)? getUserDataSuccess,
    TResult? Function(String errMessage)? getUserDataFailure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaySuccess success)? success,
    TResult Function(PayError error)? failure,
    TResult Function()? getUserDataLoading,
    TResult Function(PayUserData userData)? getUserDataSuccess,
    TResult Function(String errMessage)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(GetUserDataLoading value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess value) getUserDataSuccess,
    required TResult Function(GetUserDataFailure value) getUserDataFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetUserDataLoading value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult? Function(GetUserDataFailure value)? getUserDataFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(GetUserDataLoading value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult Function(GetUserDataFailure value)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements PayState {
  const factory Failure({required final PayError error}) = _$FailureImpl;

  PayError get error;

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDataLoadingImplCopyWith<$Res> {
  factory _$$GetUserDataLoadingImplCopyWith(_$GetUserDataLoadingImpl value,
          $Res Function(_$GetUserDataLoadingImpl) then) =
      __$$GetUserDataLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataLoadingImplCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$GetUserDataLoadingImpl>
    implements _$$GetUserDataLoadingImplCopyWith<$Res> {
  __$$GetUserDataLoadingImplCopyWithImpl(_$GetUserDataLoadingImpl _value,
      $Res Function(_$GetUserDataLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserDataLoadingImpl implements GetUserDataLoading {
  const _$GetUserDataLoadingImpl();

  @override
  String toString() {
    return 'PayState.getUserDataLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDataLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaySuccess success) success,
    required TResult Function(PayError error) failure,
    required TResult Function() getUserDataLoading,
    required TResult Function(PayUserData userData) getUserDataSuccess,
    required TResult Function(String errMessage) getUserDataFailure,
  }) {
    return getUserDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaySuccess success)? success,
    TResult? Function(PayError error)? failure,
    TResult? Function()? getUserDataLoading,
    TResult? Function(PayUserData userData)? getUserDataSuccess,
    TResult? Function(String errMessage)? getUserDataFailure,
  }) {
    return getUserDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaySuccess success)? success,
    TResult Function(PayError error)? failure,
    TResult Function()? getUserDataLoading,
    TResult Function(PayUserData userData)? getUserDataSuccess,
    TResult Function(String errMessage)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (getUserDataLoading != null) {
      return getUserDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(GetUserDataLoading value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess value) getUserDataSuccess,
    required TResult Function(GetUserDataFailure value) getUserDataFailure,
  }) {
    return getUserDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetUserDataLoading value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult? Function(GetUserDataFailure value)? getUserDataFailure,
  }) {
    return getUserDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(GetUserDataLoading value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult Function(GetUserDataFailure value)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (getUserDataLoading != null) {
      return getUserDataLoading(this);
    }
    return orElse();
  }
}

abstract class GetUserDataLoading implements PayState {
  const factory GetUserDataLoading() = _$GetUserDataLoadingImpl;
}

/// @nodoc
abstract class _$$GetUserDataSuccessImplCopyWith<$Res> {
  factory _$$GetUserDataSuccessImplCopyWith(_$GetUserDataSuccessImpl value,
          $Res Function(_$GetUserDataSuccessImpl) then) =
      __$$GetUserDataSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PayUserData userData});
}

/// @nodoc
class __$$GetUserDataSuccessImplCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$GetUserDataSuccessImpl>
    implements _$$GetUserDataSuccessImplCopyWith<$Res> {
  __$$GetUserDataSuccessImplCopyWithImpl(_$GetUserDataSuccessImpl _value,
      $Res Function(_$GetUserDataSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$GetUserDataSuccessImpl(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as PayUserData,
    ));
  }
}

/// @nodoc

class _$GetUserDataSuccessImpl implements GetUserDataSuccess {
  const _$GetUserDataSuccessImpl({required this.userData});

  @override
  final PayUserData userData;

  @override
  String toString() {
    return 'PayState.getUserDataSuccess(userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataSuccessImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataSuccessImplCopyWith<_$GetUserDataSuccessImpl> get copyWith =>
      __$$GetUserDataSuccessImplCopyWithImpl<_$GetUserDataSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaySuccess success) success,
    required TResult Function(PayError error) failure,
    required TResult Function() getUserDataLoading,
    required TResult Function(PayUserData userData) getUserDataSuccess,
    required TResult Function(String errMessage) getUserDataFailure,
  }) {
    return getUserDataSuccess(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaySuccess success)? success,
    TResult? Function(PayError error)? failure,
    TResult? Function()? getUserDataLoading,
    TResult? Function(PayUserData userData)? getUserDataSuccess,
    TResult? Function(String errMessage)? getUserDataFailure,
  }) {
    return getUserDataSuccess?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaySuccess success)? success,
    TResult Function(PayError error)? failure,
    TResult Function()? getUserDataLoading,
    TResult Function(PayUserData userData)? getUserDataSuccess,
    TResult Function(String errMessage)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (getUserDataSuccess != null) {
      return getUserDataSuccess(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(GetUserDataLoading value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess value) getUserDataSuccess,
    required TResult Function(GetUserDataFailure value) getUserDataFailure,
  }) {
    return getUserDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetUserDataLoading value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult? Function(GetUserDataFailure value)? getUserDataFailure,
  }) {
    return getUserDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(GetUserDataLoading value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult Function(GetUserDataFailure value)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (getUserDataSuccess != null) {
      return getUserDataSuccess(this);
    }
    return orElse();
  }
}

abstract class GetUserDataSuccess implements PayState {
  const factory GetUserDataSuccess({required final PayUserData userData}) =
      _$GetUserDataSuccessImpl;

  PayUserData get userData;

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserDataSuccessImplCopyWith<_$GetUserDataSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDataFailureImplCopyWith<$Res> {
  factory _$$GetUserDataFailureImplCopyWith(_$GetUserDataFailureImpl value,
          $Res Function(_$GetUserDataFailureImpl) then) =
      __$$GetUserDataFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMessage});
}

/// @nodoc
class __$$GetUserDataFailureImplCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$GetUserDataFailureImpl>
    implements _$$GetUserDataFailureImplCopyWith<$Res> {
  __$$GetUserDataFailureImplCopyWithImpl(_$GetUserDataFailureImpl _value,
      $Res Function(_$GetUserDataFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMessage = null,
  }) {
    return _then(_$GetUserDataFailureImpl(
      errMessage: null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserDataFailureImpl implements GetUserDataFailure {
  const _$GetUserDataFailureImpl({required this.errMessage});

  @override
  final String errMessage;

  @override
  String toString() {
    return 'PayState.getUserDataFailure(errMessage: $errMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataFailureImpl &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMessage);

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataFailureImplCopyWith<_$GetUserDataFailureImpl> get copyWith =>
      __$$GetUserDataFailureImplCopyWithImpl<_$GetUserDataFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaySuccess success) success,
    required TResult Function(PayError error) failure,
    required TResult Function() getUserDataLoading,
    required TResult Function(PayUserData userData) getUserDataSuccess,
    required TResult Function(String errMessage) getUserDataFailure,
  }) {
    return getUserDataFailure(errMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaySuccess success)? success,
    TResult? Function(PayError error)? failure,
    TResult? Function()? getUserDataLoading,
    TResult? Function(PayUserData userData)? getUserDataSuccess,
    TResult? Function(String errMessage)? getUserDataFailure,
  }) {
    return getUserDataFailure?.call(errMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaySuccess success)? success,
    TResult Function(PayError error)? failure,
    TResult Function()? getUserDataLoading,
    TResult Function(PayUserData userData)? getUserDataSuccess,
    TResult Function(String errMessage)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (getUserDataFailure != null) {
      return getUserDataFailure(errMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(GetUserDataLoading value) getUserDataLoading,
    required TResult Function(GetUserDataSuccess value) getUserDataSuccess,
    required TResult Function(GetUserDataFailure value) getUserDataFailure,
  }) {
    return getUserDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(GetUserDataLoading value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult? Function(GetUserDataFailure value)? getUserDataFailure,
  }) {
    return getUserDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(GetUserDataLoading value)? getUserDataLoading,
    TResult Function(GetUserDataSuccess value)? getUserDataSuccess,
    TResult Function(GetUserDataFailure value)? getUserDataFailure,
    required TResult orElse(),
  }) {
    if (getUserDataFailure != null) {
      return getUserDataFailure(this);
    }
    return orElse();
  }
}

abstract class GetUserDataFailure implements PayState {
  const factory GetUserDataFailure({required final String errMessage}) =
      _$GetUserDataFailureImpl;

  String get errMessage;

  /// Create a copy of PayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserDataFailureImplCopyWith<_$GetUserDataFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
