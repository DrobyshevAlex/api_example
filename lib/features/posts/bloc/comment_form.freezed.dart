// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentFormEventTearOff {
  const _$CommentFormEventTearOff();

  _NameCommentFormEvent name(String v) {
    return _NameCommentFormEvent(
      v,
    );
  }

  _EmailCommentFormEvent email(String v) {
    return _EmailCommentFormEvent(
      v,
    );
  }

  _BodyCommentFormEvent body(String v) {
    return _BodyCommentFormEvent(
      v,
    );
  }

  _RequestCommentFormEvent request(int postId) {
    return _RequestCommentFormEvent(
      postId,
    );
  }
}

/// @nodoc
const $CommentFormEvent = _$CommentFormEventTearOff();

/// @nodoc
mixin _$CommentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String v) name,
    required TResult Function(String v) email,
    required TResult Function(String v) body,
    required TResult Function(int postId) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameCommentFormEvent value) name,
    required TResult Function(_EmailCommentFormEvent value) email,
    required TResult Function(_BodyCommentFormEvent value) body,
    required TResult Function(_RequestCommentFormEvent value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormEventCopyWith<$Res> {
  factory $CommentFormEventCopyWith(
          CommentFormEvent value, $Res Function(CommentFormEvent) then) =
      _$CommentFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentFormEventCopyWithImpl<$Res>
    implements $CommentFormEventCopyWith<$Res> {
  _$CommentFormEventCopyWithImpl(this._value, this._then);

  final CommentFormEvent _value;
  // ignore: unused_field
  final $Res Function(CommentFormEvent) _then;
}

/// @nodoc
abstract class _$NameCommentFormEventCopyWith<$Res> {
  factory _$NameCommentFormEventCopyWith(_NameCommentFormEvent value,
          $Res Function(_NameCommentFormEvent) then) =
      __$NameCommentFormEventCopyWithImpl<$Res>;
  $Res call({String v});
}

/// @nodoc
class __$NameCommentFormEventCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$NameCommentFormEventCopyWith<$Res> {
  __$NameCommentFormEventCopyWithImpl(
      _NameCommentFormEvent _value, $Res Function(_NameCommentFormEvent) _then)
      : super(_value, (v) => _then(v as _NameCommentFormEvent));

  @override
  _NameCommentFormEvent get _value => super._value as _NameCommentFormEvent;

  @override
  $Res call({
    Object? v = freezed,
  }) {
    return _then(_NameCommentFormEvent(
      v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameCommentFormEvent extends _NameCommentFormEvent {
  const _$_NameCommentFormEvent(this.v) : super._();

  @override
  final String v;

  @override
  String toString() {
    return 'CommentFormEvent.name(v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NameCommentFormEvent &&
            const DeepCollectionEquality().equals(other.v, v));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(v));

  @JsonKey(ignore: true)
  @override
  _$NameCommentFormEventCopyWith<_NameCommentFormEvent> get copyWith =>
      __$NameCommentFormEventCopyWithImpl<_NameCommentFormEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String v) name,
    required TResult Function(String v) email,
    required TResult Function(String v) body,
    required TResult Function(int postId) request,
  }) {
    return name(v);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
  }) {
    return name?.call(v);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(v);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameCommentFormEvent value) name,
    required TResult Function(_EmailCommentFormEvent value) email,
    required TResult Function(_BodyCommentFormEvent value) body,
    required TResult Function(_RequestCommentFormEvent value) request,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class _NameCommentFormEvent extends CommentFormEvent {
  const factory _NameCommentFormEvent(String v) = _$_NameCommentFormEvent;
  const _NameCommentFormEvent._() : super._();

  String get v;
  @JsonKey(ignore: true)
  _$NameCommentFormEventCopyWith<_NameCommentFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailCommentFormEventCopyWith<$Res> {
  factory _$EmailCommentFormEventCopyWith(_EmailCommentFormEvent value,
          $Res Function(_EmailCommentFormEvent) then) =
      __$EmailCommentFormEventCopyWithImpl<$Res>;
  $Res call({String v});
}

/// @nodoc
class __$EmailCommentFormEventCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$EmailCommentFormEventCopyWith<$Res> {
  __$EmailCommentFormEventCopyWithImpl(_EmailCommentFormEvent _value,
      $Res Function(_EmailCommentFormEvent) _then)
      : super(_value, (v) => _then(v as _EmailCommentFormEvent));

  @override
  _EmailCommentFormEvent get _value => super._value as _EmailCommentFormEvent;

  @override
  $Res call({
    Object? v = freezed,
  }) {
    return _then(_EmailCommentFormEvent(
      v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailCommentFormEvent extends _EmailCommentFormEvent {
  const _$_EmailCommentFormEvent(this.v) : super._();

  @override
  final String v;

  @override
  String toString() {
    return 'CommentFormEvent.email(v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailCommentFormEvent &&
            const DeepCollectionEquality().equals(other.v, v));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(v));

  @JsonKey(ignore: true)
  @override
  _$EmailCommentFormEventCopyWith<_EmailCommentFormEvent> get copyWith =>
      __$EmailCommentFormEventCopyWithImpl<_EmailCommentFormEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String v) name,
    required TResult Function(String v) email,
    required TResult Function(String v) body,
    required TResult Function(int postId) request,
  }) {
    return email(v);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
  }) {
    return email?.call(v);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(v);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameCommentFormEvent value) name,
    required TResult Function(_EmailCommentFormEvent value) email,
    required TResult Function(_BodyCommentFormEvent value) body,
    required TResult Function(_RequestCommentFormEvent value) request,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class _EmailCommentFormEvent extends CommentFormEvent {
  const factory _EmailCommentFormEvent(String v) = _$_EmailCommentFormEvent;
  const _EmailCommentFormEvent._() : super._();

  String get v;
  @JsonKey(ignore: true)
  _$EmailCommentFormEventCopyWith<_EmailCommentFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BodyCommentFormEventCopyWith<$Res> {
  factory _$BodyCommentFormEventCopyWith(_BodyCommentFormEvent value,
          $Res Function(_BodyCommentFormEvent) then) =
      __$BodyCommentFormEventCopyWithImpl<$Res>;
  $Res call({String v});
}

/// @nodoc
class __$BodyCommentFormEventCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$BodyCommentFormEventCopyWith<$Res> {
  __$BodyCommentFormEventCopyWithImpl(
      _BodyCommentFormEvent _value, $Res Function(_BodyCommentFormEvent) _then)
      : super(_value, (v) => _then(v as _BodyCommentFormEvent));

  @override
  _BodyCommentFormEvent get _value => super._value as _BodyCommentFormEvent;

  @override
  $Res call({
    Object? v = freezed,
  }) {
    return _then(_BodyCommentFormEvent(
      v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BodyCommentFormEvent extends _BodyCommentFormEvent {
  const _$_BodyCommentFormEvent(this.v) : super._();

  @override
  final String v;

  @override
  String toString() {
    return 'CommentFormEvent.body(v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyCommentFormEvent &&
            const DeepCollectionEquality().equals(other.v, v));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(v));

  @JsonKey(ignore: true)
  @override
  _$BodyCommentFormEventCopyWith<_BodyCommentFormEvent> get copyWith =>
      __$BodyCommentFormEventCopyWithImpl<_BodyCommentFormEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String v) name,
    required TResult Function(String v) email,
    required TResult Function(String v) body,
    required TResult Function(int postId) request,
  }) {
    return body(v);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
  }) {
    return body?.call(v);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
    required TResult orElse(),
  }) {
    if (body != null) {
      return body(v);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameCommentFormEvent value) name,
    required TResult Function(_EmailCommentFormEvent value) email,
    required TResult Function(_BodyCommentFormEvent value) body,
    required TResult Function(_RequestCommentFormEvent value) request,
  }) {
    return body(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
  }) {
    return body?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
    required TResult orElse(),
  }) {
    if (body != null) {
      return body(this);
    }
    return orElse();
  }
}

abstract class _BodyCommentFormEvent extends CommentFormEvent {
  const factory _BodyCommentFormEvent(String v) = _$_BodyCommentFormEvent;
  const _BodyCommentFormEvent._() : super._();

  String get v;
  @JsonKey(ignore: true)
  _$BodyCommentFormEventCopyWith<_BodyCommentFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestCommentFormEventCopyWith<$Res> {
  factory _$RequestCommentFormEventCopyWith(_RequestCommentFormEvent value,
          $Res Function(_RequestCommentFormEvent) then) =
      __$RequestCommentFormEventCopyWithImpl<$Res>;
  $Res call({int postId});
}

/// @nodoc
class __$RequestCommentFormEventCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$RequestCommentFormEventCopyWith<$Res> {
  __$RequestCommentFormEventCopyWithImpl(_RequestCommentFormEvent _value,
      $Res Function(_RequestCommentFormEvent) _then)
      : super(_value, (v) => _then(v as _RequestCommentFormEvent));

  @override
  _RequestCommentFormEvent get _value =>
      super._value as _RequestCommentFormEvent;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_RequestCommentFormEvent(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RequestCommentFormEvent extends _RequestCommentFormEvent {
  const _$_RequestCommentFormEvent(this.postId) : super._();

  @override
  final int postId;

  @override
  String toString() {
    return 'CommentFormEvent.request(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestCommentFormEvent &&
            const DeepCollectionEquality().equals(other.postId, postId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postId));

  @JsonKey(ignore: true)
  @override
  _$RequestCommentFormEventCopyWith<_RequestCommentFormEvent> get copyWith =>
      __$RequestCommentFormEventCopyWithImpl<_RequestCommentFormEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String v) name,
    required TResult Function(String v) email,
    required TResult Function(String v) body,
    required TResult Function(int postId) request,
  }) {
    return request(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
  }) {
    return request?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String v)? name,
    TResult Function(String v)? email,
    TResult Function(String v)? body,
    TResult Function(int postId)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameCommentFormEvent value) name,
    required TResult Function(_EmailCommentFormEvent value) email,
    required TResult Function(_BodyCommentFormEvent value) body,
    required TResult Function(_RequestCommentFormEvent value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameCommentFormEvent value)? name,
    TResult Function(_EmailCommentFormEvent value)? email,
    TResult Function(_BodyCommentFormEvent value)? body,
    TResult Function(_RequestCommentFormEvent value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _RequestCommentFormEvent extends CommentFormEvent {
  const factory _RequestCommentFormEvent(int postId) =
      _$_RequestCommentFormEvent;
  const _RequestCommentFormEvent._() : super._();

  int get postId;
  @JsonKey(ignore: true)
  _$RequestCommentFormEventCopyWith<_RequestCommentFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentFormStateTearOff {
  const _$CommentFormStateTearOff();

  _CommentFormState call(
      {EmptyInput name = const EmptyInput.pure(),
      EmailInput email = const EmailInput.pure(),
      EmptyInput body = const EmptyInput.pure(),
      FormzStatus status = FormzStatus.pure}) {
    return _CommentFormState(
      name: name,
      email: email,
      body: body,
      status: status,
    );
  }
}

/// @nodoc
const $CommentFormState = _$CommentFormStateTearOff();

/// @nodoc
mixin _$CommentFormState {
  EmptyInput get name => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  EmptyInput get body => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentFormStateCopyWith<CommentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormStateCopyWith<$Res> {
  factory $CommentFormStateCopyWith(
          CommentFormState value, $Res Function(CommentFormState) then) =
      _$CommentFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmptyInput name, EmailInput email, EmptyInput body, FormzStatus status});
}

/// @nodoc
class _$CommentFormStateCopyWithImpl<$Res>
    implements $CommentFormStateCopyWith<$Res> {
  _$CommentFormStateCopyWithImpl(this._value, this._then);

  final CommentFormState _value;
  // ignore: unused_field
  final $Res Function(CommentFormState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as EmptyInput,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as EmptyInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$CommentFormStateCopyWith<$Res>
    implements $CommentFormStateCopyWith<$Res> {
  factory _$CommentFormStateCopyWith(
          _CommentFormState value, $Res Function(_CommentFormState) then) =
      __$CommentFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmptyInput name, EmailInput email, EmptyInput body, FormzStatus status});
}

/// @nodoc
class __$CommentFormStateCopyWithImpl<$Res>
    extends _$CommentFormStateCopyWithImpl<$Res>
    implements _$CommentFormStateCopyWith<$Res> {
  __$CommentFormStateCopyWithImpl(
      _CommentFormState _value, $Res Function(_CommentFormState) _then)
      : super(_value, (v) => _then(v as _CommentFormState));

  @override
  _CommentFormState get _value => super._value as _CommentFormState;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_CommentFormState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as EmptyInput,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as EmptyInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_CommentFormState implements _CommentFormState {
  const _$_CommentFormState(
      {this.name = const EmptyInput.pure(),
      this.email = const EmailInput.pure(),
      this.body = const EmptyInput.pure(),
      this.status = FormzStatus.pure});

  @JsonKey()
  @override
  final EmptyInput name;
  @JsonKey()
  @override
  final EmailInput email;
  @JsonKey()
  @override
  final EmptyInput body;
  @JsonKey()
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'CommentFormState(name: $name, email: $email, body: $body, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentFormState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith =>
      __$CommentFormStateCopyWithImpl<_CommentFormState>(this, _$identity);
}

abstract class _CommentFormState implements CommentFormState {
  const factory _CommentFormState(
      {EmptyInput name,
      EmailInput email,
      EmptyInput body,
      FormzStatus status}) = _$_CommentFormState;

  @override
  EmptyInput get name;
  @override
  EmailInput get email;
  @override
  EmptyInput get body;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
