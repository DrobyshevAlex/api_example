// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
class _$AddressModelTearOff {
  const _$AddressModelTearOff();

  _AddressModel call(
      {required String street,
      required String suite,
      required String city,
      required String zipcode,
      required GeoModel geo}) {
    return _AddressModel(
      street: street,
      suite: suite,
      city: city,
      zipcode: zipcode,
      geo: geo,
    );
  }

  AddressModel fromJson(Map<String, Object?> json) {
    return AddressModel.fromJson(json);
  }
}

/// @nodoc
const $AddressModel = _$AddressModelTearOff();

/// @nodoc
mixin _$AddressModel {
  String get street => throw _privateConstructorUsedError;
  String get suite => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get zipcode => throw _privateConstructorUsedError;
  GeoModel get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res>;
  $Res call(
      {String street, String suite, String city, String zipcode, GeoModel geo});

  $GeoModelCopyWith<$Res> get geo;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res> implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  final AddressModel _value;
  // ignore: unused_field
  final $Res Function(AddressModel) _then;

  @override
  $Res call({
    Object? street = freezed,
    Object? suite = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: suite == freezed
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as GeoModel,
    ));
  }

  @override
  $GeoModelCopyWith<$Res> get geo {
    return $GeoModelCopyWith<$Res>(_value.geo, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class _$AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$AddressModelCopyWith(
          _AddressModel value, $Res Function(_AddressModel) then) =
      __$AddressModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String street, String suite, String city, String zipcode, GeoModel geo});

  @override
  $GeoModelCopyWith<$Res> get geo;
}

/// @nodoc
class __$AddressModelCopyWithImpl<$Res> extends _$AddressModelCopyWithImpl<$Res>
    implements _$AddressModelCopyWith<$Res> {
  __$AddressModelCopyWithImpl(
      _AddressModel _value, $Res Function(_AddressModel) _then)
      : super(_value, (v) => _then(v as _AddressModel));

  @override
  _AddressModel get _value => super._value as _AddressModel;

  @override
  $Res call({
    Object? street = freezed,
    Object? suite = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
  }) {
    return _then(_AddressModel(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: suite == freezed
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as GeoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressModel extends _AddressModel {
  const _$_AddressModel(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo})
      : super._();

  factory _$_AddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddressModelFromJson(json);

  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  final String zipcode;
  @override
  final GeoModel geo;

  @override
  String toString() {
    return 'AddressModel(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressModel &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.suite, suite) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.zipcode, zipcode) &&
            const DeepCollectionEquality().equals(other.geo, geo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(suite),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(zipcode),
      const DeepCollectionEquality().hash(geo));

  @JsonKey(ignore: true)
  @override
  _$AddressModelCopyWith<_AddressModel> get copyWith =>
      __$AddressModelCopyWithImpl<_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressModelToJson(this);
  }
}

abstract class _AddressModel extends AddressModel {
  const factory _AddressModel(
      {required String street,
      required String suite,
      required String city,
      required String zipcode,
      required GeoModel geo}) = _$_AddressModel;
  const _AddressModel._() : super._();

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$_AddressModel.fromJson;

  @override
  String get street;
  @override
  String get suite;
  @override
  String get city;
  @override
  String get zipcode;
  @override
  GeoModel get geo;
  @override
  @JsonKey(ignore: true)
  _$AddressModelCopyWith<_AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoModel _$GeoModelFromJson(Map<String, dynamic> json) {
  return _GeoModel.fromJson(json);
}

/// @nodoc
class _$GeoModelTearOff {
  const _$GeoModelTearOff();

  _GeoModel call({required String lat, required String lng}) {
    return _GeoModel(
      lat: lat,
      lng: lng,
    );
  }

  GeoModel fromJson(Map<String, Object?> json) {
    return GeoModel.fromJson(json);
  }
}

/// @nodoc
const $GeoModel = _$GeoModelTearOff();

/// @nodoc
mixin _$GeoModel {
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoModelCopyWith<GeoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoModelCopyWith<$Res> {
  factory $GeoModelCopyWith(GeoModel value, $Res Function(GeoModel) then) =
      _$GeoModelCopyWithImpl<$Res>;
  $Res call({String lat, String lng});
}

/// @nodoc
class _$GeoModelCopyWithImpl<$Res> implements $GeoModelCopyWith<$Res> {
  _$GeoModelCopyWithImpl(this._value, this._then);

  final GeoModel _value;
  // ignore: unused_field
  final $Res Function(GeoModel) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GeoModelCopyWith<$Res> implements $GeoModelCopyWith<$Res> {
  factory _$GeoModelCopyWith(_GeoModel value, $Res Function(_GeoModel) then) =
      __$GeoModelCopyWithImpl<$Res>;
  @override
  $Res call({String lat, String lng});
}

/// @nodoc
class __$GeoModelCopyWithImpl<$Res> extends _$GeoModelCopyWithImpl<$Res>
    implements _$GeoModelCopyWith<$Res> {
  __$GeoModelCopyWithImpl(_GeoModel _value, $Res Function(_GeoModel) _then)
      : super(_value, (v) => _then(v as _GeoModel));

  @override
  _GeoModel get _value => super._value as _GeoModel;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_GeoModel(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoModel implements _GeoModel {
  const _$_GeoModel({required this.lat, required this.lng});

  factory _$_GeoModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeoModelFromJson(json);

  @override
  final String lat;
  @override
  final String lng;

  @override
  String toString() {
    return 'GeoModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeoModel &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$GeoModelCopyWith<_GeoModel> get copyWith =>
      __$GeoModelCopyWithImpl<_GeoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoModelToJson(this);
  }
}

abstract class _GeoModel implements GeoModel {
  const factory _GeoModel({required String lat, required String lng}) =
      _$_GeoModel;

  factory _GeoModel.fromJson(Map<String, dynamic> json) = _$_GeoModel.fromJson;

  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(ignore: true)
  _$GeoModelCopyWith<_GeoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
