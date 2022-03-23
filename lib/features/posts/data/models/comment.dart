import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required int id,
    required int postId,
    required String name,
    required String email,
    required String body,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}

@JsonSerializable()
class CommentCreateModel {
  const CommentCreateModel({
    required this.postId,
    required this.name,
    required this.email,
    required this.body,
  });
  final int postId;
  final String name;
  final String email;
  final String body;

  Map<String, dynamic> toJson() => _$CommentCreateModelToJson(this);
}
