// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostEventTearOff {
  const _$PostEventTearOff();

  _RequestPostEvent request(int id) {
    return _RequestPostEvent(
      id,
    );
  }
}

/// @nodoc
const $PostEvent = _$PostEventTearOff();

/// @nodoc
mixin _$PostEvent {
  int get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPostEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestPostEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPostEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEventCopyWith<PostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RequestPostEventCopyWith<$Res>
    implements $PostEventCopyWith<$Res> {
  factory _$RequestPostEventCopyWith(
          _RequestPostEvent value, $Res Function(_RequestPostEvent) then) =
      __$RequestPostEventCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$RequestPostEventCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements _$RequestPostEventCopyWith<$Res> {
  __$RequestPostEventCopyWithImpl(
      _RequestPostEvent _value, $Res Function(_RequestPostEvent) _then)
      : super(_value, (v) => _then(v as _RequestPostEvent));

  @override
  _RequestPostEvent get _value => super._value as _RequestPostEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RequestPostEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RequestPostEvent extends _RequestPostEvent {
  const _$_RequestPostEvent(this.id) : super._();

  @override
  final int id;

  @override
  String toString() {
    return 'PostEvent.request(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestPostEvent &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$RequestPostEventCopyWith<_RequestPostEvent> get copyWith =>
      __$RequestPostEventCopyWithImpl<_RequestPostEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) request,
  }) {
    return request(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? request,
  }) {
    return request?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPostEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestPostEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPostEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _RequestPostEvent extends PostEvent {
  const factory _RequestPostEvent(int id) = _$_RequestPostEvent;
  const _RequestPostEvent._() : super._();

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$RequestPostEventCopyWith<_RequestPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostStateTearOff {
  const _$PostStateTearOff();

  _InitialPostState initial() {
    return const _InitialPostState();
  }

  _LoadingPostState loading() {
    return const _LoadingPostState();
  }

  _SuccessPostState success(PostModel? post) {
    return _SuccessPostState(
      post,
    );
  }

  _ErrorPostState error(Exception e) {
    return _ErrorPostState(
      e,
    );
  }
}

/// @nodoc
const $PostState = _$PostStateTearOff();

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PostModel? post) success,
    required TResult Function(Exception e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
    TResult Function(Exception e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPostState value) initial,
    required TResult Function(_LoadingPostState value) loading,
    required TResult Function(_SuccessPostState value) success,
    required TResult Function(_ErrorPostState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;
}

/// @nodoc
abstract class _$InitialPostStateCopyWith<$Res> {
  factory _$InitialPostStateCopyWith(
          _InitialPostState value, $Res Function(_InitialPostState) then) =
      __$InitialPostStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialPostStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$InitialPostStateCopyWith<$Res> {
  __$InitialPostStateCopyWithImpl(
      _InitialPostState _value, $Res Function(_InitialPostState) _then)
      : super(_value, (v) => _then(v as _InitialPostState));

  @override
  _InitialPostState get _value => super._value as _InitialPostState;
}

/// @nodoc

class _$_InitialPostState extends _InitialPostState {
  const _$_InitialPostState() : super._();

  @override
  String toString() {
    return 'PostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialPostState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PostModel? post) success,
    required TResult Function(Exception e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
    TResult Function(Exception e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
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
    required TResult Function(_InitialPostState value) initial,
    required TResult Function(_LoadingPostState value) loading,
    required TResult Function(_SuccessPostState value) success,
    required TResult Function(_ErrorPostState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPostState extends PostState {
  const factory _InitialPostState() = _$_InitialPostState;
  const _InitialPostState._() : super._();
}

/// @nodoc
abstract class _$LoadingPostStateCopyWith<$Res> {
  factory _$LoadingPostStateCopyWith(
          _LoadingPostState value, $Res Function(_LoadingPostState) then) =
      __$LoadingPostStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingPostStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$LoadingPostStateCopyWith<$Res> {
  __$LoadingPostStateCopyWithImpl(
      _LoadingPostState _value, $Res Function(_LoadingPostState) _then)
      : super(_value, (v) => _then(v as _LoadingPostState));

  @override
  _LoadingPostState get _value => super._value as _LoadingPostState;
}

/// @nodoc

class _$_LoadingPostState extends _LoadingPostState {
  const _$_LoadingPostState() : super._();

  @override
  String toString() {
    return 'PostState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingPostState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PostModel? post) success,
    required TResult Function(Exception e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
    TResult Function(Exception e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
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
    required TResult Function(_InitialPostState value) initial,
    required TResult Function(_LoadingPostState value) loading,
    required TResult Function(_SuccessPostState value) success,
    required TResult Function(_ErrorPostState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPostState extends PostState {
  const factory _LoadingPostState() = _$_LoadingPostState;
  const _LoadingPostState._() : super._();
}

/// @nodoc
abstract class _$SuccessPostStateCopyWith<$Res> {
  factory _$SuccessPostStateCopyWith(
          _SuccessPostState value, $Res Function(_SuccessPostState) then) =
      __$SuccessPostStateCopyWithImpl<$Res>;
  $Res call({PostModel? post});

  $PostModelCopyWith<$Res>? get post;
}

/// @nodoc
class __$SuccessPostStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$SuccessPostStateCopyWith<$Res> {
  __$SuccessPostStateCopyWithImpl(
      _SuccessPostState _value, $Res Function(_SuccessPostState) _then)
      : super(_value, (v) => _then(v as _SuccessPostState));

  @override
  _SuccessPostState get _value => super._value as _SuccessPostState;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_SuccessPostState(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostModel?,
    ));
  }

  @override
  $PostModelCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $PostModelCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_SuccessPostState extends _SuccessPostState {
  const _$_SuccessPostState(this.post) : super._();

  @override
  final PostModel? post;

  @override
  String toString() {
    return 'PostState.success(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessPostState &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$SuccessPostStateCopyWith<_SuccessPostState> get copyWith =>
      __$SuccessPostStateCopyWithImpl<_SuccessPostState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PostModel? post) success,
    required TResult Function(Exception e) error,
  }) {
    return success(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
    TResult Function(Exception e)? error,
  }) {
    return success?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPostState value) initial,
    required TResult Function(_LoadingPostState value) loading,
    required TResult Function(_SuccessPostState value) success,
    required TResult Function(_ErrorPostState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessPostState extends PostState {
  const factory _SuccessPostState(PostModel? post) = _$_SuccessPostState;
  const _SuccessPostState._() : super._();

  PostModel? get post;
  @JsonKey(ignore: true)
  _$SuccessPostStateCopyWith<_SuccessPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorPostStateCopyWith<$Res> {
  factory _$ErrorPostStateCopyWith(
          _ErrorPostState value, $Res Function(_ErrorPostState) then) =
      __$ErrorPostStateCopyWithImpl<$Res>;
  $Res call({Exception e});
}

/// @nodoc
class __$ErrorPostStateCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$ErrorPostStateCopyWith<$Res> {
  __$ErrorPostStateCopyWithImpl(
      _ErrorPostState _value, $Res Function(_ErrorPostState) _then)
      : super(_value, (v) => _then(v as _ErrorPostState));

  @override
  _ErrorPostState get _value => super._value as _ErrorPostState;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_ErrorPostState(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_ErrorPostState extends _ErrorPostState {
  const _$_ErrorPostState(this.e) : super._();

  @override
  final Exception e;

  @override
  String toString() {
    return 'PostState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorPostState &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$ErrorPostStateCopyWith<_ErrorPostState> get copyWith =>
      __$ErrorPostStateCopyWithImpl<_ErrorPostState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PostModel? post) success,
    required TResult Function(Exception e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
    TResult Function(Exception e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PostModel? post)? success,
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
    required TResult Function(_InitialPostState value) initial,
    required TResult Function(_LoadingPostState value) loading,
    required TResult Function(_SuccessPostState value) success,
    required TResult Function(_ErrorPostState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPostState value)? initial,
    TResult Function(_LoadingPostState value)? loading,
    TResult Function(_SuccessPostState value)? success,
    TResult Function(_ErrorPostState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPostState extends PostState {
  const factory _ErrorPostState(Exception e) = _$_ErrorPostState;
  const _ErrorPostState._() : super._();

  Exception get e;
  @JsonKey(ignore: true)
  _$ErrorPostStateCopyWith<_ErrorPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
