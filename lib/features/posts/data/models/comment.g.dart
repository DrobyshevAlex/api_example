// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentCreateModel _$CommentCreateModelFromJson(Map<String, dynamic> json) =>
    CommentCreateModel(
      postId: json['postId'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$CommentCreateModelToJson(CommentCreateModel instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      id: json['id'] as int,
      postId: json['postId'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
