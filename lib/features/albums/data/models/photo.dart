import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class PhotoModel with _$PhotoModel {
  const factory PhotoModel({
    required int id,
    required int albumId,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);
}
