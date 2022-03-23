import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required GeoModel geo,
  }) = _AddressModel;

  const AddressModel._();

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  String get full => [zipcode, city, street, suite].join(', ');
}

@freezed
class GeoModel with _$GeoModel {
  const factory GeoModel({
    required String lat,
    required String lng,
  }) = _GeoModel;

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);
}
