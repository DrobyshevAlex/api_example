// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  _RequestUserEvent request(int userId) {
    return _RequestUserEvent(
      userId,
    );
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  int get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestUserEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestUserEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestUserEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RequestUserEventCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$RequestUserEventCopyWith(
          _RequestUserEvent value, $Res Function(_RequestUserEvent) then) =
      __$RequestUserEventCopyWithImpl<$Res>;
  @override
  $Res call({int userId});
}

/// @nodoc
class __$RequestUserEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$RequestUserEventCopyWith<$Res> {
  __$RequestUserEventCopyWithImpl(
      _RequestUserEvent _value, $Res Function(_RequestUserEvent) _then)
      : super(_value, (v) => _then(v as _RequestUserEvent));

  @override
  _RequestUserEvent get _value => super._value as _RequestUserEvent;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_RequestUserEvent(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RequestUserEvent extends _RequestUserEvent {
  const _$_RequestUserEvent(this.userId) : super._();

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent.request(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestUserEvent &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$RequestUserEventCopyWith<_RequestUserEvent> get copyWith =>
      __$RequestUserEventCopyWithImpl<_RequestUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) request,
  }) {
    return request(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? request,
  }) {
    return request?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestUserEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestUserEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestUserEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _RequestUserEvent extends UserEvent {
  const factory _RequestUserEvent(int userId) = _$_RequestUserEvent;
  const _RequestUserEvent._() : super._();

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$RequestUserEventCopyWith<_RequestUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  InitialUserState initial() {
    return const InitialUserState();
  }

  LoadingUserState loading() {
    return const LoadingUserState();
  }

  SuccessUserState success(UserModel? user) {
    return SuccessUserState(
      user,
    );
  }

  ErrorUserState error(Exception e) {
    return ErrorUserState(
      e,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? user) success,
    required TResult Function(Exception e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoadingUserState value) loading,
    required TResult Function(SuccessUserState value) success,
    required TResult Function(ErrorUserState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $InitialUserStateCopyWith<$Res> {
  factory $InitialUserStateCopyWith(
          InitialUserState value, $Res Function(InitialUserState) then) =
      _$InitialUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $InitialUserStateCopyWith<$Res> {
  _$InitialUserStateCopyWithImpl(
      InitialUserState _value, $Res Function(InitialUserState) _then)
      : super(_value, (v) => _then(v as InitialUserState));

  @override
  InitialUserState get _value => super._value as InitialUserState;
}

/// @nodoc

class _$InitialUserState extends InitialUserState {
  const _$InitialUserState() : super._();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? user) success,
    required TResult Function(Exception e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
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
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoadingUserState value) loading,
    required TResult Function(SuccessUserState value) success,
    required TResult Function(ErrorUserState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialUserState extends UserState {
  const factory InitialUserState() = _$InitialUserState;
  const InitialUserState._() : super._();
}

/// @nodoc
abstract class $LoadingUserStateCopyWith<$Res> {
  factory $LoadingUserStateCopyWith(
          LoadingUserState value, $Res Function(LoadingUserState) then) =
      _$LoadingUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $LoadingUserStateCopyWith<$Res> {
  _$LoadingUserStateCopyWithImpl(
      LoadingUserState _value, $Res Function(LoadingUserState) _then)
      : super(_value, (v) => _then(v as LoadingUserState));

  @override
  LoadingUserState get _value => super._value as LoadingUserState;
}

/// @nodoc

class _$LoadingUserState extends LoadingUserState {
  const _$LoadingUserState() : super._();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? user) success,
    required TResult Function(Exception e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
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
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoadingUserState value) loading,
    required TResult Function(SuccessUserState value) success,
    required TResult Function(ErrorUserState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingUserState extends UserState {
  const factory LoadingUserState() = _$LoadingUserState;
  const LoadingUserState._() : super._();
}

/// @nodoc
abstract class $SuccessUserStateCopyWith<$Res> {
  factory $SuccessUserStateCopyWith(
          SuccessUserState value, $Res Function(SuccessUserState) then) =
      _$SuccessUserStateCopyWithImpl<$Res>;
  $Res call({UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$SuccessUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $SuccessUserStateCopyWith<$Res> {
  _$SuccessUserStateCopyWithImpl(
      SuccessUserState _value, $Res Function(SuccessUserState) _then)
      : super(_value, (v) => _then(v as SuccessUserState));

  @override
  SuccessUserState get _value => super._value as SuccessUserState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(SuccessUserState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SuccessUserState extends SuccessUserState {
  const _$SuccessUserState(this.user) : super._();

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'UserState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessUserState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $SuccessUserStateCopyWith<SuccessUserState> get copyWith =>
      _$SuccessUserStateCopyWithImpl<SuccessUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? user) success,
    required TResult Function(Exception e) error,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoadingUserState value) loading,
    required TResult Function(SuccessUserState value) success,
    required TResult Function(ErrorUserState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessUserState extends UserState {
  const factory SuccessUserState(UserModel? user) = _$SuccessUserState;
  const SuccessUserState._() : super._();

  UserModel? get user;
  @JsonKey(ignore: true)
  $SuccessUserStateCopyWith<SuccessUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorUserStateCopyWith<$Res> {
  factory $ErrorUserStateCopyWith(
          ErrorUserState value, $Res Function(ErrorUserState) then) =
      _$ErrorUserStateCopyWithImpl<$Res>;
  $Res call({Exception e});
}

/// @nodoc
class _$ErrorUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $ErrorUserStateCopyWith<$Res> {
  _$ErrorUserStateCopyWithImpl(
      ErrorUserState _value, $Res Function(ErrorUserState) _then)
      : super(_value, (v) => _then(v as ErrorUserState));

  @override
  ErrorUserState get _value => super._value as ErrorUserState;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(ErrorUserState(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ErrorUserState extends ErrorUserState {
  const _$ErrorUserState(this.e) : super._();

  @override
  final Exception e;

  @override
  String toString() {
    return 'UserState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorUserState &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  $ErrorUserStateCopyWith<ErrorUserState> get copyWith =>
      _$ErrorUserStateCopyWithImpl<ErrorUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel? user) success,
    required TResult Function(Exception e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel? user)? success,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserState value) initial,
    required TResult Function(LoadingUserState value) loading,
    required TResult Function(SuccessUserState value) success,
    required TResult Function(ErrorUserState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserState value)? initial,
    TResult Function(LoadingUserState value)? loading,
    TResult Function(SuccessUserState value)? success,
    TResult Function(ErrorUserState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorUserState extends UserState {
  const factory ErrorUserState(Exception e) = _$ErrorUserState;
  const ErrorUserState._() : super._();

  Exception get e;
  @JsonKey(ignore: true)
  $ErrorUserStateCopyWith<ErrorUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
