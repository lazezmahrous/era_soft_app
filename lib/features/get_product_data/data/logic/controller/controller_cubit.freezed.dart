// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ControllerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int newModelColorIndex) changeModelColor,
    required TResult Function(String selectedSize) selectSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int newModelColorIndex)? changeModelColor,
    TResult? Function(String selectedSize)? selectSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int newModelColorIndex)? changeModelColor,
    TResult Function(String selectedSize)? selectSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeModelColor value) changeModelColor,
    required TResult Function(SelectSize value) selectSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeModelColor value)? changeModelColor,
    TResult? Function(SelectSize value)? selectSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeModelColor value)? changeModelColor,
    TResult Function(SelectSize value)? selectSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControllerStateCopyWith<$Res> {
  factory $ControllerStateCopyWith(
          ControllerState value, $Res Function(ControllerState) then) =
      _$ControllerStateCopyWithImpl<$Res, ControllerState>;
}

/// @nodoc
class _$ControllerStateCopyWithImpl<$Res, $Val extends ControllerState>
    implements $ControllerStateCopyWith<$Res> {
  _$ControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ControllerState
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
    extends _$ControllerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControllerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ControllerState.initial()';
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
    required TResult Function(int newModelColorIndex) changeModelColor,
    required TResult Function(String selectedSize) selectSize,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int newModelColorIndex)? changeModelColor,
    TResult? Function(String selectedSize)? selectSize,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int newModelColorIndex)? changeModelColor,
    TResult Function(String selectedSize)? selectSize,
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
    required TResult Function(ChangeModelColor value) changeModelColor,
    required TResult Function(SelectSize value) selectSize,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeModelColor value)? changeModelColor,
    TResult? Function(SelectSize value)? selectSize,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeModelColor value)? changeModelColor,
    TResult Function(SelectSize value)? selectSize,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ControllerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeModelColorImplCopyWith<$Res> {
  factory _$$ChangeModelColorImplCopyWith(_$ChangeModelColorImpl value,
          $Res Function(_$ChangeModelColorImpl) then) =
      __$$ChangeModelColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int newModelColorIndex});
}

/// @nodoc
class __$$ChangeModelColorImplCopyWithImpl<$Res>
    extends _$ControllerStateCopyWithImpl<$Res, _$ChangeModelColorImpl>
    implements _$$ChangeModelColorImplCopyWith<$Res> {
  __$$ChangeModelColorImplCopyWithImpl(_$ChangeModelColorImpl _value,
      $Res Function(_$ChangeModelColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newModelColorIndex = null,
  }) {
    return _then(_$ChangeModelColorImpl(
      newModelColorIndex: null == newModelColorIndex
          ? _value.newModelColorIndex
          : newModelColorIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeModelColorImpl implements ChangeModelColor {
  const _$ChangeModelColorImpl({required this.newModelColorIndex});

  @override
  final int newModelColorIndex;

  @override
  String toString() {
    return 'ControllerState.changeModelColor(newModelColorIndex: $newModelColorIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeModelColorImpl &&
            (identical(other.newModelColorIndex, newModelColorIndex) ||
                other.newModelColorIndex == newModelColorIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newModelColorIndex);

  /// Create a copy of ControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeModelColorImplCopyWith<_$ChangeModelColorImpl> get copyWith =>
      __$$ChangeModelColorImplCopyWithImpl<_$ChangeModelColorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int newModelColorIndex) changeModelColor,
    required TResult Function(String selectedSize) selectSize,
  }) {
    return changeModelColor(newModelColorIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int newModelColorIndex)? changeModelColor,
    TResult? Function(String selectedSize)? selectSize,
  }) {
    return changeModelColor?.call(newModelColorIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int newModelColorIndex)? changeModelColor,
    TResult Function(String selectedSize)? selectSize,
    required TResult orElse(),
  }) {
    if (changeModelColor != null) {
      return changeModelColor(newModelColorIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeModelColor value) changeModelColor,
    required TResult Function(SelectSize value) selectSize,
  }) {
    return changeModelColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeModelColor value)? changeModelColor,
    TResult? Function(SelectSize value)? selectSize,
  }) {
    return changeModelColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeModelColor value)? changeModelColor,
    TResult Function(SelectSize value)? selectSize,
    required TResult orElse(),
  }) {
    if (changeModelColor != null) {
      return changeModelColor(this);
    }
    return orElse();
  }
}

abstract class ChangeModelColor implements ControllerState {
  const factory ChangeModelColor({required final int newModelColorIndex}) =
      _$ChangeModelColorImpl;

  int get newModelColorIndex;

  /// Create a copy of ControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeModelColorImplCopyWith<_$ChangeModelColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectSizeImplCopyWith<$Res> {
  factory _$$SelectSizeImplCopyWith(
          _$SelectSizeImpl value, $Res Function(_$SelectSizeImpl) then) =
      __$$SelectSizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedSize});
}

/// @nodoc
class __$$SelectSizeImplCopyWithImpl<$Res>
    extends _$ControllerStateCopyWithImpl<$Res, _$SelectSizeImpl>
    implements _$$SelectSizeImplCopyWith<$Res> {
  __$$SelectSizeImplCopyWithImpl(
      _$SelectSizeImpl _value, $Res Function(_$SelectSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSize = null,
  }) {
    return _then(_$SelectSizeImpl(
      selectedSize: null == selectedSize
          ? _value.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectSizeImpl implements SelectSize {
  const _$SelectSizeImpl({required this.selectedSize});

  @override
  final String selectedSize;

  @override
  String toString() {
    return 'ControllerState.selectSize(selectedSize: $selectedSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSizeImpl &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSize);

  /// Create a copy of ControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSizeImplCopyWith<_$SelectSizeImpl> get copyWith =>
      __$$SelectSizeImplCopyWithImpl<_$SelectSizeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int newModelColorIndex) changeModelColor,
    required TResult Function(String selectedSize) selectSize,
  }) {
    return selectSize(selectedSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int newModelColorIndex)? changeModelColor,
    TResult? Function(String selectedSize)? selectSize,
  }) {
    return selectSize?.call(selectedSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int newModelColorIndex)? changeModelColor,
    TResult Function(String selectedSize)? selectSize,
    required TResult orElse(),
  }) {
    if (selectSize != null) {
      return selectSize(selectedSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeModelColor value) changeModelColor,
    required TResult Function(SelectSize value) selectSize,
  }) {
    return selectSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeModelColor value)? changeModelColor,
    TResult? Function(SelectSize value)? selectSize,
  }) {
    return selectSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeModelColor value)? changeModelColor,
    TResult Function(SelectSize value)? selectSize,
    required TResult orElse(),
  }) {
    if (selectSize != null) {
      return selectSize(this);
    }
    return orElse();
  }
}

abstract class SelectSize implements ControllerState {
  const factory SelectSize({required final String selectedSize}) =
      _$SelectSizeImpl;

  String get selectedSize;

  /// Create a copy of ControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectSizeImplCopyWith<_$SelectSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
