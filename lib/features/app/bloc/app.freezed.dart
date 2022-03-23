// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _InitAppEvent init() {
    return const _InitAppEvent();
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAppEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitAppEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAppEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$InitAppEventCopyWith<$Res> {
  factory _$InitAppEventCopyWith(
          _InitAppEvent value, $Res Function(_InitAppEvent) then) =
      __$InitAppEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitAppEventCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$InitAppEventCopyWith<$Res> {
  __$InitAppEventCopyWithImpl(
      _InitAppEvent _value, $Res Function(_InitAppEvent) _then)
      : super(_value, (v) => _then(v as _InitAppEvent));

  @override
  _InitAppEvent get _value => super._value as _InitAppEvent;
}

/// @nodoc

class _$_InitAppEvent extends _InitAppEvent {
  const _$_InitAppEvent() : super._();

  @override
  String toString() {
    return 'AppEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitAppEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAppEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitAppEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAppEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitAppEvent extends AppEvent {
  const factory _InitAppEvent() = _$_InitAppEvent;
  const _InitAppEvent._() : super._();
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _InitialAppState initial() {
    return const _InitialAppState();
  }

  _SuccessAppState success(SharedPreferences sharedPrefs) {
    return _SuccessAppState(
      sharedPrefs,
    );
  }

  _ErrorAppState error() {
    return const _ErrorAppState();
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SharedPreferences sharedPrefs) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SharedPreferences sharedPrefs)? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SharedPreferences sharedPrefs)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAppState value) initial,
    required TResult Function(_SuccessAppState value) success,
    required TResult Function(_ErrorAppState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    TResult Function(_SuccessAppState value)? success,
    TResult Function(_ErrorAppState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    TResult Function(_SuccessAppState value)? success,
    TResult Function(_ErrorAppState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$InitialAppStateCopyWith<$Res> {
  factory _$InitialAppStateCopyWith(
          _InitialAppState value, $Res Function(_InitialAppState) then) =
      __$InitialAppStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialAppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$InitialAppStateCopyWith<$Res> {
  __$InitialAppStateCopyWithImpl(
      _InitialAppState _value, $Res Function(_InitialAppState) _then)
      : super(_value, (v) => _then(v as _InitialAppState));

  @override
  _InitialAppState get _value => super._value as _InitialAppState;
}

/// @nodoc

class _$_InitialAppState extends _InitialAppState {
  const _$_InitialAppState() : super._();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialAppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SharedPreferences sharedPrefs) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SharedPreferences sharedPrefs)? success,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SharedPreferences sharedPrefs)? success,
    TResult Function()? error,
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
    required TResult Function(_InitialAppState value) initial,
    required TResult Function(_SuccessAppState value) success,
    required TResult Function(_ErrorAppState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    TResult Function(_SuccessAppState value)? success,
    TResult Function(_ErrorAppState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    TResult Function(_SuccessAppState value)? success,
    TResult Function(_ErrorAppState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAppState extends AppState {
  const factory _InitialAppState() = _$_InitialAppState;
  const _InitialAppState._() : super._();
}

/// @nodoc
abstract class _$SuccessAppStateCopyWith<$Res> {
  factory _$SuccessAppStateCopyWith(
          _SuccessAppState value, $Res Function(_SuccessAppState) then) =
      __$SuccessAppStateCopyWithImpl<$Res>;
  $Res call({SharedPreferences sharedPrefs});
}

/// @nodoc
class __$SuccessAppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$SuccessAppStateCopyWith<$Res> {
  __$SuccessAppStateCopyWithImpl(
      _SuccessAppState _value, $Res Function(_SuccessAppState) _then)
      : super(_value, (v) => _then(v as _SuccessAppState));

  @override
  _SuccessAppState get _value => super._value as _SuccessAppState;

  @override
  $Res call({
    Object? sharedPrefs = freezed,
  }) {
    return _then(_SuccessAppState(
      sharedPrefs == freezed
          ? _value.sharedPrefs
          : sharedPrefs // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
    ));
  }
}

/// @nodoc

class _$_SuccessAppState extends _SuccessAppState {
  const _$_SuccessAppState(this.sharedPrefs) : super._();

  @override
  final SharedPreferences sharedPrefs;

  @override
  String toString() {
    return 'AppState.success(sharedPrefs: $sharedPrefs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessAppState &&
            const DeepCollectionEquality()
                .equals(other.sharedPrefs, sharedPrefs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sharedPrefs));

  @JsonKey(ignore: true)
  @override
  _$SuccessAppStateCopyWith<_SuccessAppState> get copyWith =>
      __$SuccessAppStateCopyWithImpl<_SuccessAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SharedPreferences sharedPrefs) success,
    required TResult Function() error,
  }) {
    return success(sharedPrefs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SharedPreferences sharedPrefs)? success,
    TResult Function()? error,
  }) {
    return success?.call(sharedPrefs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SharedPreferences sharedPrefs)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(sharedPrefs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAppState value) initial,
    required TResult Function(_SuccessAppState value) success,
    required TResult Function(_ErrorAppState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    TResult Function(_SuccessAppState value)? success,
    TResult Function(_ErrorAppState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    TResult Function(_SuccessAppState value)? success,
    TResult Function(_ErrorAppState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessAppState extends AppState {
  const factory _SuccessAppState(SharedPreferences sharedPrefs) =
      _$_SuccessAppState;
  const _SuccessAppState._() : super._();

  SharedPreferences get sharedPrefs;
  @JsonKey(ignore: true)
  _$SuccessAppStateCopyWith<_SuccessAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorAppStateCopyWith<$Res> {
  factory _$ErrorAppStateCopyWith(
          _ErrorAppState value, $Res Function(_ErrorAppState) then) =
      __$ErrorAppStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorAppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$ErrorAppStateCopyWith<$Res> {
  __$ErrorAppStateCopyWithImpl(
      _ErrorAppState _value, $Res Function(_ErrorAppState) _then)
      : super(_value, (v) => _then(v as _ErrorAppState));

  @override
  _ErrorAppState get _value => super._value as _ErrorAppState;
}

/// @nodoc

class _$_ErrorAppState extends _ErrorAppState {
  const _$_ErrorAppState() : super._();

  @override
  String toString() {
    return 'AppState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ErrorAppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SharedPreferences sharedPrefs) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SharedPreferences sharedPrefs)? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SharedPreferences sharedPrefs)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAppState value) initial,
    required TResult Function(_SuccessAppState value) success,
    required TResult Function(_ErrorAppState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    TResult Function(_SuccessAppState value)? success,
    TResult Function(_ErrorAppState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAppState value)? initial,
    TResult Function(_SuccessAppState value)? success,
    TResult Function(_ErrorAppState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAppState extends AppState {
  const factory _ErrorAppState() = _$_ErrorAppState;
  const _ErrorAppState._() : super._();
}
