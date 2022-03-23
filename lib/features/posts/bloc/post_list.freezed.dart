// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostListEventTearOff {
  const _$PostListEventTearOff();

  RequestPostListEvent request(int offset, int limit, int? userId) {
    return RequestPostListEvent(
      offset,
      limit,
      userId,
    );
  }
}

/// @nodoc
const $PostListEvent = _$PostListEventTearOff();

/// @nodoc
mixin _$PostListEvent {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int limit, int? userId) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int limit, int? userId)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int limit, int? userId)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestPostListEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestPostListEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestPostListEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostListEventCopyWith<PostListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListEventCopyWith<$Res> {
  factory $PostListEventCopyWith(
          PostListEvent value, $Res Function(PostListEvent) then) =
      _$PostListEventCopyWithImpl<$Res>;
  $Res call({int offset, int limit, int? userId});
}

/// @nodoc
class _$PostListEventCopyWithImpl<$Res>
    implements $PostListEventCopyWith<$Res> {
  _$PostListEventCopyWithImpl(this._value, this._then);

  final PostListEvent _value;
  // ignore: unused_field
  final $Res Function(PostListEvent) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $RequestPostListEventCopyWith<$Res>
    implements $PostListEventCopyWith<$Res> {
  factory $RequestPostListEventCopyWith(RequestPostListEvent value,
          $Res Function(RequestPostListEvent) then) =
      _$RequestPostListEventCopyWithImpl<$Res>;
  @override
  $Res call({int offset, int limit, int? userId});
}

/// @nodoc
class _$RequestPostListEventCopyWithImpl<$Res>
    extends _$PostListEventCopyWithImpl<$Res>
    implements $RequestPostListEventCopyWith<$Res> {
  _$RequestPostListEventCopyWithImpl(
      RequestPostListEvent _value, $Res Function(RequestPostListEvent) _then)
      : super(_value, (v) => _then(v as RequestPostListEvent));

  @override
  RequestPostListEvent get _value => super._value as RequestPostListEvent;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? userId = freezed,
  }) {
    return _then(RequestPostListEvent(
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RequestPostListEvent extends RequestPostListEvent {
  const _$RequestPostListEvent(this.offset, this.limit, this.userId)
      : super._();

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int? userId;

  @override
  String toString() {
    return 'PostListEvent.request(offset: $offset, limit: $limit, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestPostListEvent &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $RequestPostListEventCopyWith<RequestPostListEvent> get copyWith =>
      _$RequestPostListEventCopyWithImpl<RequestPostListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int limit, int? userId) request,
  }) {
    return request(offset, limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int limit, int? userId)? request,
  }) {
    return request?.call(offset, limit, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int limit, int? userId)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(offset, limit, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestPostListEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestPostListEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestPostListEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class RequestPostListEvent extends PostListEvent {
  const factory RequestPostListEvent(int offset, int limit, int? userId) =
      _$RequestPostListEvent;
  const RequestPostListEvent._() : super._();

  @override
  int get offset;
  @override
  int get limit;
  @override
  int? get userId;
  @override
  @JsonKey(ignore: true)
  $RequestPostListEventCopyWith<RequestPostListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostListStateTearOff {
  const _$PostListStateTearOff();

  _PostListState call(
      {UnmodifiableListView<PostModel>? data,
      Exception? error,
      bool loading = false,
      int? nextPageKey}) {
    return _PostListState(
      data: data,
      error: error,
      loading: loading,
      nextPageKey: nextPageKey,
    );
  }
}

/// @nodoc
const $PostListState = _$PostListStateTearOff();

/// @nodoc
mixin _$PostListState {
  UnmodifiableListView<PostModel>? get data =>
      throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostListStateCopyWith<PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res>;
  $Res call(
      {UnmodifiableListView<PostModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});
}

/// @nodoc
class _$PostListStateCopyWithImpl<$Res>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._value, this._then);

  final PostListState _value;
  // ignore: unused_field
  final $Res Function(PostListState) _then;

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
              as UnmodifiableListView<PostModel>?,
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
abstract class _$PostListStateCopyWith<$Res>
    implements $PostListStateCopyWith<$Res> {
  factory _$PostListStateCopyWith(
          _PostListState value, $Res Function(_PostListState) then) =
      __$PostListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UnmodifiableListView<PostModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});
}

/// @nodoc
class __$PostListStateCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res>
    implements _$PostListStateCopyWith<$Res> {
  __$PostListStateCopyWithImpl(
      _PostListState _value, $Res Function(_PostListState) _then)
      : super(_value, (v) => _then(v as _PostListState));

  @override
  _PostListState get _value => super._value as _PostListState;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? loading = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_PostListState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<PostModel>?,
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

class _$_PostListState extends _PostListState {
  const _$_PostListState(
      {this.data, this.error, this.loading = false, this.nextPageKey})
      : super._();

  @override
  final UnmodifiableListView<PostModel>? data;
  @override
  final Exception? error;
  @JsonKey()
  @override
  final bool loading;
  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'PostListState(data: $data, error: $error, loading: $loading, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostListState &&
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
  _$PostListStateCopyWith<_PostListState> get copyWith =>
      __$PostListStateCopyWithImpl<_PostListState>(this, _$identity);
}

abstract class _PostListState extends PostListState {
  const factory _PostListState(
      {UnmodifiableListView<PostModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey}) = _$_PostListState;
  const _PostListState._() : super._();

  @override
  UnmodifiableListView<PostModel>? get data;
  @override
  Exception? get error;
  @override
  bool get loading;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$PostListStateCopyWith<_PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}
