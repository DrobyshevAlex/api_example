import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  const factory AlbumModel({
    required int id,
    required int userId,
    required String title,
  }) = _AlbumModel;

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelFromJson(json);
}
