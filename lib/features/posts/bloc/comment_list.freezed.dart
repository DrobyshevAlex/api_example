// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentListEventTearOff {
  const _$CommentListEventTearOff();

  RequestCommentListEvent request(int postId, int offset) {
    return RequestCommentListEvent(
      postId,
      offset,
    );
  }
}

/// @nodoc
const $CommentListEvent = _$CommentListEventTearOff();

/// @nodoc
mixin _$CommentListEvent {
  int get postId => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId, int offset) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postId, int offset)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId, int offset)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCommentListEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCommentListEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCommentListEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentListEventCopyWith<CommentListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentListEventCopyWith<$Res> {
  factory $CommentListEventCopyWith(
          CommentListEvent value, $Res Function(CommentListEvent) then) =
      _$CommentListEventCopyWithImpl<$Res>;
  $Res call({int postId, int offset});
}

/// @nodoc
class _$CommentListEventCopyWithImpl<$Res>
    implements $CommentListEventCopyWith<$Res> {
  _$CommentListEventCopyWithImpl(this._value, this._then);

  final CommentListEvent _value;
  // ignore: unused_field
  final $Res Function(CommentListEvent) _then;

  @override
  $Res call({
    Object? postId = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $RequestCommentListEventCopyWith<$Res>
    implements $CommentListEventCopyWith<$Res> {
  factory $RequestCommentListEventCopyWith(RequestCommentListEvent value,
          $Res Function(RequestCommentListEvent) then) =
      _$RequestCommentListEventCopyWithImpl<$Res>;
  @override
  $Res call({int postId, int offset});
}

/// @nodoc
class _$RequestCommentListEventCopyWithImpl<$Res>
    extends _$CommentListEventCopyWithImpl<$Res>
    implements $RequestCommentListEventCopyWith<$Res> {
  _$RequestCommentListEventCopyWithImpl(RequestCommentListEvent _value,
      $Res Function(RequestCommentListEvent) _then)
      : super(_value, (v) => _then(v as RequestCommentListEvent));

  @override
  RequestCommentListEvent get _value => super._value as RequestCommentListEvent;

  @override
  $Res call({
    Object? postId = freezed,
    Object? offset = freezed,
  }) {
    return _then(RequestCommentListEvent(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RequestCommentListEvent extends RequestCommentListEvent {
  const _$RequestCommentListEvent(this.postId, this.offset) : super._();

  @override
  final int postId;
  @override
  final int offset;

  @override
  String toString() {
    return 'CommentListEvent.request(postId: $postId, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestCommentListEvent &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  $RequestCommentListEventCopyWith<RequestCommentListEvent> get copyWith =>
      _$RequestCommentListEventCopyWithImpl<RequestCommentListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId, int offset) request,
  }) {
    return request(postId, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postId, int offset)? request,
  }) {
    return request?.call(postId, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId, int offset)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(postId, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCommentListEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCommentListEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCommentListEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class RequestCommentListEvent extends CommentListEvent {
  const factory RequestCommentListEvent(int postId, int offset) =
      _$RequestCommentListEvent;
  const RequestCommentListEvent._() : super._();

  @override
  int get postId;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  $RequestCommentListEventCopyWith<RequestCommentListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentListStateTearOff {
  const _$CommentListStateTearOff();

  _CommentListStateState call(
      {UnmodifiableListView<CommentModel>? data,
      Exception? error,
      bool loading = false,
      int? nextPageKey}) {
    return _CommentListStateState(
      data: data,
      error: error,
      loading: loading,
      nextPageKey: nextPageKey,
    );
  }
}

/// @nodoc
const $CommentListState = _$CommentListStateTearOff();

/// @nodoc
mixin _$CommentListState {
  UnmodifiableListView<CommentModel>? get data =>
      throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentListStateCopyWith<CommentListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentListStateCopyWith<$Res> {
  factory $CommentListStateCopyWith(
          CommentListState value, $Res Function(CommentListState) then) =
      _$CommentListStateCopyWithImpl<$Res>;
  $Res call(
      {UnmodifiableListView<CommentModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});
}

/// @nodoc
class _$CommentListStateCopyWithImpl<$Res>
    implements $CommentListStateCopyWith<$Res> {
  _$CommentListStateCopyWithImpl(this._value, this._then);

  final CommentListState _value;
  // ignore: unused_field
  final $Res Function(CommentListState) _then;

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
              as UnmodifiableListView<CommentModel>?,
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
abstract class _$CommentListStateStateCopyWith<$Res>
    implements $CommentListStateCopyWith<$Res> {
  factory _$CommentListStateStateCopyWith(_CommentListStateState value,
          $Res Function(_CommentListStateState) then) =
      __$CommentListStateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UnmodifiableListView<CommentModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});
}

/// @nodoc
class __$CommentListStateStateCopyWithImpl<$Res>
    extends _$CommentListStateCopyWithImpl<$Res>
    implements _$CommentListStateStateCopyWith<$Res> {
  __$CommentListStateStateCopyWithImpl(_CommentListStateState _value,
      $Res Function(_CommentListStateState) _then)
      : super(_value, (v) => _then(v as _CommentListStateState));

  @override
  _CommentListStateState get _value => super._value as _CommentListStateState;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? loading = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_CommentListStateState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<CommentModel>?,
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

class _$_CommentListStateState extends _CommentListStateState {
  const _$_CommentListStateState(
      {this.data, this.error, this.loading = false, this.nextPageKey})
      : super._();

  @override
  final UnmodifiableListView<CommentModel>? data;
  @override
  final Exception? error;
  @JsonKey()
  @override
  final bool loading;
  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'CommentListState(data: $data, error: $error, loading: $loading, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentListStateState &&
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
  _$CommentListStateStateCopyWith<_CommentListStateState> get copyWith =>
      __$CommentListStateStateCopyWithImpl<_CommentListStateState>(
          this, _$identity);
}

abstract class _CommentListStateState extends CommentListState {
  const factory _CommentListStateState(
      {UnmodifiableListView<CommentModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey}) = _$_CommentListStateState;
  const _CommentListStateState._() : super._();

  @override
  UnmodifiableListView<CommentModel>? get data;
  @override
  Exception? get error;
  @override
  bool get loading;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$CommentListStateStateCopyWith<_CommentListStateState> get copyWith =>
      throw _privateConstructorUsedError;
}
