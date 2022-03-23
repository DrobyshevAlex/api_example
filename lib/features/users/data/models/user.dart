import 'package:api_example/features/users/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required AddressModel address,
    required String phone,
    required String website,
    required CompanyModel company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
