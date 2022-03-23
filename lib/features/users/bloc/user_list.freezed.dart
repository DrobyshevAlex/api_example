// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserListEventTearOff {
  const _$UserListEventTearOff();

  _RequestUserListEvent request([int? offset]) {
    return _RequestUserListEvent(
      offset,
    );
  }
}

/// @nodoc
const $UserListEvent = _$UserListEventTearOff();

/// @nodoc
mixin _$UserListEvent {
  int? get offset => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? offset) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? offset)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? offset)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestUserListEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestUserListEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestUserListEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListEventCopyWith<UserListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
          UserListEvent value, $Res Function(UserListEvent) then) =
      _$UserListEventCopyWithImpl<$Res>;
  $Res call({int? offset});
}

/// @nodoc
class _$UserListEventCopyWithImpl<$Res>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  final UserListEvent _value;
  // ignore: unused_field
  final $Res Function(UserListEvent) _then;

  @override
  $Res call({
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RequestUserListEventCopyWith<$Res>
    implements $UserListEventCopyWith<$Res> {
  factory _$RequestUserListEventCopyWith(_RequestUserListEvent value,
          $Res Function(_RequestUserListEvent) then) =
      __$RequestUserListEventCopyWithImpl<$Res>;
  @override
  $Res call({int? offset});
}

/// @nodoc
class __$RequestUserListEventCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res>
    implements _$RequestUserListEventCopyWith<$Res> {
  __$RequestUserListEventCopyWithImpl(
      _RequestUserListEvent _value, $Res Function(_RequestUserListEvent) _then)
      : super(_value, (v) => _then(v as _RequestUserListEvent));

  @override
  _RequestUserListEvent get _value => super._value as _RequestUserListEvent;

  @override
  $Res call({
    Object? offset = freezed,
  }) {
    return _then(_RequestUserListEvent(
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RequestUserListEvent extends _RequestUserListEvent {
  const _$_RequestUserListEvent([this.offset]) : super._();

  @override
  final int? offset;

  @override
  String toString() {
    return 'UserListEvent.request(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestUserListEvent &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$RequestUserListEventCopyWith<_RequestUserListEvent> get copyWith =>
      __$RequestUserListEventCopyWithImpl<_RequestUserListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? offset) request,
  }) {
    return request(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? offset)? request,
  }) {
    return request?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? offset)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestUserListEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestUserListEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestUserListEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _RequestUserListEvent extends UserListEvent {
  const factory _RequestUserListEvent([int? offset]) = _$_RequestUserListEvent;
  const _RequestUserListEvent._() : super._();

  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$RequestUserListEventCopyWith<_RequestUserListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserListStateTearOff {
  const _$UserListStateTearOff();

  _UserListState call(
      {UnmodifiableListView<UserModel>? data,
      Exception? error,
      bool loading = false,
      int? nextPageKey}) {
    return _UserListState(
      data: data,
      error: error,
      loading: loading,
      nextPageKey: nextPageKey,
    );
  }
}

/// @nodoc
const $UserListState = _$UserListStateTearOff();

/// @nodoc
mixin _$UserListState {
  UnmodifiableListView<UserModel>? get data =>
      throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res>;
  $Res call(
      {UnmodifiableListView<UserModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  final UserListState _value;
  // ignore: unused_field
  final $Res Function(UserListState) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? loading = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<UserModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPageKey: nextPageKey == freezed
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserListStateCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$UserListStateCopyWith(
          _UserListState value, $Res Function(_UserListState) then) =
      __$UserListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UnmodifiableListView<UserModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});
}

/// @nodoc
class __$UserListStateCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res>
    implements _$UserListStateCopyWith<$Res> {
  __$UserListStateCopyWithImpl(
      _UserListState _value, $Res Function(_UserListState) _then)
      : super(_value, (v) => _then(v as _UserListState));

  @override
  _UserListState get _value => super._value as _UserListState;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? loading = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_UserListState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<UserModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPageKey: nextPageKey == freezed
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_UserListState implements _UserListState {
  const _$_UserListState(
      {this.data, this.error, this.loading = false, this.nextPageKey});

  @override
  final UnmodifiableListView<UserModel>? data;
  @override
  final Exception? error;
  @JsonKey()
  @override
  final bool loading;
  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'UserListState(data: $data, error: $error, loading: $loading, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserListState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.nextPageKey, nextPageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(nextPageKey));

  @JsonKey(ignore: true)
  @override
  _$UserListStateCopyWith<_UserListState> get copyWith =>
      __$UserListStateCopyWithImpl<_UserListState>(this, _$identity);
}

abstract class _UserListState implements UserListState {
  const factory _UserListState(
      {UnmodifiableListView<UserModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey}) = _$_UserListState;

  @override
  UnmodifiableListView<UserModel>? get data;
  @override
  Exception? get error;
  @override
  bool get loading;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$UserListStateCopyWith<_UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}
