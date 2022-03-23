// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AlbumListEventTearOff {
  const _$AlbumListEventTearOff();

  _RequestAlbumListEvent request(int? userId, int? offset, int? limit) {
    return _RequestAlbumListEvent(
      userId,
      offset,
      limit,
    );
  }
}

/// @nodoc
const $AlbumListEvent = _$AlbumListEventTearOff();

/// @nodoc
mixin _$AlbumListEvent {
  int? get userId => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId, int? offset, int? limit) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? userId, int? offset, int? limit)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId, int? offset, int? limit)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestAlbumListEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestAlbumListEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestAlbumListEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumListEventCopyWith<AlbumListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumListEventCopyWith<$Res> {
  factory $AlbumListEventCopyWith(
          AlbumListEvent value, $Res Function(AlbumListEvent) then) =
      _$AlbumListEventCopyWithImpl<$Res>;
  $Res call({int? userId, int? offset, int? limit});
}

/// @nodoc
class _$AlbumListEventCopyWithImpl<$Res>
    implements $AlbumListEventCopyWith<$Res> {
  _$AlbumListEventCopyWithImpl(this._value, this._then);

  final AlbumListEvent _value;
  // ignore: unused_field
  final $Res Function(AlbumListEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RequestAlbumListEventCopyWith<$Res>
    implements $AlbumListEventCopyWith<$Res> {
  factory _$RequestAlbumListEventCopyWith(_RequestAlbumListEvent value,
          $Res Function(_RequestAlbumListEvent) then) =
      __$RequestAlbumListEventCopyWithImpl<$Res>;
  @override
  $Res call({int? userId, int? offset, int? limit});
}

/// @nodoc
class __$RequestAlbumListEventCopyWithImpl<$Res>
    extends _$AlbumListEventCopyWithImpl<$Res>
    implements _$RequestAlbumListEventCopyWith<$Res> {
  __$RequestAlbumListEventCopyWithImpl(_RequestAlbumListEvent _value,
      $Res Function(_RequestAlbumListEvent) _then)
      : super(_value, (v) => _then(v as _RequestAlbumListEvent));

  @override
  _RequestAlbumListEvent get _value => super._value as _RequestAlbumListEvent;

  @override
  $Res call({
    Object? userId = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_RequestAlbumListEvent(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RequestAlbumListEvent extends _RequestAlbumListEvent {
  const _$_RequestAlbumListEvent(this.userId, this.offset, this.limit)
      : super._();

  @override
  final int? userId;
  @override
  final int? offset;
  @override
  final int? limit;

  @override
  String toString() {
    return 'AlbumListEvent.request(userId: $userId, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestAlbumListEvent &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$RequestAlbumListEventCopyWith<_RequestAlbumListEvent> get copyWith =>
      __$RequestAlbumListEventCopyWithImpl<_RequestAlbumListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId, int? offset, int? limit) request,
  }) {
    return request(userId, offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? userId, int? offset, int? limit)? request,
  }) {
    return request?.call(userId, offset, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId, int? offset, int? limit)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(userId, offset, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestAlbumListEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestAlbumListEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestAlbumListEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _RequestAlbumListEvent extends AlbumListEvent {
  const factory _RequestAlbumListEvent(int? userId, int? offset, int? limit) =
      _$_RequestAlbumListEvent;
  const _RequestAlbumListEvent._() : super._();

  @override
  int? get userId;
  @override
  int? get offset;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$RequestAlbumListEventCopyWith<_RequestAlbumListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AlbumListStateTearOff {
  const _$AlbumListStateTearOff();

  _AlbumListState call(
      {UnmodifiableListView<AlbumModel>? data,
      Exception? error,
      bool loading = false,
      int? nextPageKey}) {
    return _AlbumListState(
      data: data,
      error: error,
      loading: loading,
      nextPageKey: nextPageKey,
    );
  }
}

/// @nodoc
const $AlbumListState = _$AlbumListStateTearOff();

/// @nodoc
mixin _$AlbumListState {
  UnmodifiableListView<AlbumModel>? get data =>
      throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumListStateCopyWith<AlbumListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumListStateCopyWith<$Res> {
  factory $AlbumListStateCopyWith(
          AlbumListState value, $Res Function(AlbumListState) then) =
      _$AlbumListStateCopyWithImpl<$Res>;
  $Res call(
      {UnmodifiableListView<AlbumModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});
}

/// @nodoc
class _$AlbumListStateCopyWithImpl<$Res>
    implements $AlbumListStateCopyWith<$Res> {
  _$AlbumListStateCopyWithImpl(this._value, this._then);

  final AlbumListState _value;
  // ignore: unused_field
  final $Res Function(AlbumListState) _then;

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
              as UnmodifiableListView<AlbumModel>?,
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
abstract class _$AlbumListStateCopyWith<$Res>
    implements $AlbumListStateCopyWith<$Res> {
  factory _$AlbumListStateCopyWith(
          _AlbumListState value, $Res Function(_AlbumListState) then) =
      __$AlbumListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UnmodifiableListView<AlbumModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});
}

/// @nodoc
class __$AlbumListStateCopyWithImpl<$Res>
    extends _$AlbumListStateCopyWithImpl<$Res>
    implements _$AlbumListStateCopyWith<$Res> {
  __$AlbumListStateCopyWithImpl(
      _AlbumListState _value, $Res Function(_AlbumListState) _then)
      : super(_value, (v) => _then(v as _AlbumListState));

  @override
  _AlbumListState get _value => super._value as _AlbumListState;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? loading = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_AlbumListState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<AlbumModel>?,
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

class _$_AlbumListState extends _AlbumListState {
  const _$_AlbumListState(
      {this.data, this.error, this.loading = false, this.nextPageKey})
      : super._();

  @override
  final UnmodifiableListView<AlbumModel>? data;
  @override
  final Exception? error;
  @JsonKey()
  @override
  final bool loading;
  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'AlbumListState(data: $data, error: $error, loading: $loading, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AlbumListState &&
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
  _$AlbumListStateCopyWith<_AlbumListState> get copyWith =>
      __$AlbumListStateCopyWithImpl<_AlbumListState>(this, _$identity);
}

abstract class _AlbumListState extends AlbumListState {
  const factory _AlbumListState(
      {UnmodifiableListView<AlbumModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey}) = _$_AlbumListState;
  const _AlbumListState._() : super._();

  @override
  UnmodifiableListView<AlbumModel>? get data;
  @override
  Exception? get error;
  @override
  bool get loading;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$AlbumListStateCopyWith<_AlbumListState> get copyWith =>
      throw _privateConstructorUsedError;
}
