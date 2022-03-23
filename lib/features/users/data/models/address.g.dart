// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeoModel.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo.toJson(),
    };

_$_GeoModel _$$_GeoModelFromJson(Map<String, dynamic> json) => _$_GeoModel(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$$_GeoModelToJson(_$_GeoModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
