import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
