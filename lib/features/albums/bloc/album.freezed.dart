// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AlbumEventTearOff {
  const _$AlbumEventTearOff();

  RequestAlbumEvent request(int albumId, int offset) {
    return RequestAlbumEvent(
      albumId,
      offset,
    );
  }
}

/// @nodoc
const $AlbumEvent = _$AlbumEventTearOff();

/// @nodoc
mixin _$AlbumEvent {
  int get albumId => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int albumId, int offset) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int albumId, int offset)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int albumId, int offset)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestAlbumEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestAlbumEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestAlbumEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumEventCopyWith<AlbumEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumEventCopyWith<$Res> {
  factory $AlbumEventCopyWith(
          AlbumEvent value, $Res Function(AlbumEvent) then) =
      _$AlbumEventCopyWithImpl<$Res>;
  $Res call({int albumId, int offset});
}

/// @nodoc
class _$AlbumEventCopyWithImpl<$Res> implements $AlbumEventCopyWith<$Res> {
  _$AlbumEventCopyWithImpl(this._value, this._then);

  final AlbumEvent _value;
  // ignore: unused_field
  final $Res Function(AlbumEvent) _then;

  @override
  $Res call({
    Object? albumId = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $RequestAlbumEventCopyWith<$Res>
    implements $AlbumEventCopyWith<$Res> {
  factory $RequestAlbumEventCopyWith(
          RequestAlbumEvent value, $Res Function(RequestAlbumEvent) then) =
      _$RequestAlbumEventCopyWithImpl<$Res>;
  @override
  $Res call({int albumId, int offset});
}

/// @nodoc
class _$RequestAlbumEventCopyWithImpl<$Res>
    extends _$AlbumEventCopyWithImpl<$Res>
    implements $RequestAlbumEventCopyWith<$Res> {
  _$RequestAlbumEventCopyWithImpl(
      RequestAlbumEvent _value, $Res Function(RequestAlbumEvent) _then)
      : super(_value, (v) => _then(v as RequestAlbumEvent));

  @override
  RequestAlbumEvent get _value => super._value as RequestAlbumEvent;

  @override
  $Res call({
    Object? albumId = freezed,
    Object? offset = freezed,
  }) {
    return _then(RequestAlbumEvent(
      albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RequestAlbumEvent extends RequestAlbumEvent {
  const _$RequestAlbumEvent(this.albumId, this.offset) : super._();

  @override
  final int albumId;
  @override
  final int offset;

  @override
  String toString() {
    return 'AlbumEvent.request(albumId: $albumId, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestAlbumEvent &&
            const DeepCollectionEquality().equals(other.albumId, albumId) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(albumId),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  $RequestAlbumEventCopyWith<RequestAlbumEvent> get copyWith =>
      _$RequestAlbumEventCopyWithImpl<RequestAlbumEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int albumId, int offset) request,
  }) {
    return request(albumId, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int albumId, int offset)? request,
  }) {
    return request?.call(albumId, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int albumId, int offset)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(albumId, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestAlbumEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestAlbumEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestAlbumEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class RequestAlbumEvent extends AlbumEvent {
  const factory RequestAlbumEvent(int albumId, int offset) =
      _$RequestAlbumEvent;
  const RequestAlbumEvent._() : super._();

  @override
  int get albumId;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  $RequestAlbumEventCopyWith<RequestAlbumEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AlbumStateTearOff {
  const _$AlbumStateTearOff();

  _AlbumState call(
      {AlbumModel? album,
      UnmodifiableListView<PhotoModel>? data,
      Exception? error,
      bool loading = false,
      int? nextPageKey}) {
    return _AlbumState(
      album: album,
      data: data,
      error: error,
      loading: loading,
      nextPageKey: nextPageKey,
    );
  }
}

/// @nodoc
const $AlbumState = _$AlbumStateTearOff();

/// @nodoc
mixin _$AlbumState {
  AlbumModel? get album => throw _privateConstructorUsedError;
  UnmodifiableListView<PhotoModel>? get data =>
      throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumStateCopyWith<AlbumState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumStateCopyWith<$Res> {
  factory $AlbumStateCopyWith(
          AlbumState value, $Res Function(AlbumState) then) =
      _$AlbumStateCopyWithImpl<$Res>;
  $Res call(
      {AlbumModel? album,
      UnmodifiableListView<PhotoModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});

  $AlbumModelCopyWith<$Res>? get album;
}

/// @nodoc
class _$AlbumStateCopyWithImpl<$Res> implements $AlbumStateCopyWith<$Res> {
  _$AlbumStateCopyWithImpl(this._value, this._then);

  final AlbumState _value;
  // ignore: unused_field
  final $Res Function(AlbumState) _then;

  @override
  $Res call({
    Object? album = freezed,
    Object? data = freezed,
    Object? error = freezed,
    Object? loading = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_value.copyWith(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumModel?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<PhotoModel>?,
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

  @override
  $AlbumModelCopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $AlbumModelCopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value));
    });
  }
}

/// @nodoc
abstract class _$AlbumStateCopyWith<$Res> implements $AlbumStateCopyWith<$Res> {
  factory _$AlbumStateCopyWith(
          _AlbumState value, $Res Function(_AlbumState) then) =
      __$AlbumStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AlbumModel? album,
      UnmodifiableListView<PhotoModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey});

  @override
  $AlbumModelCopyWith<$Res>? get album;
}

/// @nodoc
class __$AlbumStateCopyWithImpl<$Res> extends _$AlbumStateCopyWithImpl<$Res>
    implements _$AlbumStateCopyWith<$Res> {
  __$AlbumStateCopyWithImpl(
      _AlbumState _value, $Res Function(_AlbumState) _then)
      : super(_value, (v) => _then(v as _AlbumState));

  @override
  _AlbumState get _value => super._value as _AlbumState;

  @override
  $Res call({
    Object? album = freezed,
    Object? data = freezed,
    Object? error = freezed,
    Object? loading = freezed,
    Object? nextPageKey = freezed,
  }) {
    return _then(_AlbumState(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumModel?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<PhotoModel>?,
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

class _$_AlbumState extends _AlbumState {
  const _$_AlbumState(
      {this.album,
      this.data,
      this.error,
      this.loading = false,
      this.nextPageKey})
      : super._();

  @override
  final AlbumModel? album;
  @override
  final UnmodifiableListView<PhotoModel>? data;
  @override
  final Exception? error;
  @JsonKey()
  @override
  final bool loading;
  @override
  final int? nextPageKey;

  @override
  String toString() {
    return 'AlbumState(album: $album, data: $data, error: $error, loading: $loading, nextPageKey: $nextPageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AlbumState &&
            const DeepCollectionEquality().equals(other.album, album) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.nextPageKey, nextPageKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(album),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(nextPageKey));

  @JsonKey(ignore: true)
  @override
  _$AlbumStateCopyWith<_AlbumState> get copyWith =>
      __$AlbumStateCopyWithImpl<_AlbumState>(this, _$identity);
}

abstract class _AlbumState extends AlbumState {
  const factory _AlbumState(
      {AlbumModel? album,
      UnmodifiableListView<PhotoModel>? data,
      Exception? error,
      bool loading,
      int? nextPageKey}) = _$_AlbumState;
  const _AlbumState._() : super._();

  @override
  AlbumModel? get album;
  @override
  UnmodifiableListView<PhotoModel>? get data;
  @override
  Exception? get error;
  @override
  bool get loading;
  @override
  int? get nextPageKey;
  @override
  @JsonKey(ignore: true)
  _$AlbumStateCopyWith<_AlbumState> get copyWith =>
      throw _privateConstructorUsedError;
}
