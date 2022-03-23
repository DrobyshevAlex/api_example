import 'dart:convert';

import 'package:api_example/features/posts/data/models/comment.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String CACHED_COMMENTS_TOKEN = 'comments';

abstract class CommentsLocalDataSource {
  Future<CommentModel?> get({required int id});
  Future<Iterable<CommentModel>?> getAll(
      {int? offset, int? limit, int? postId});
  Future<bool> addAll(Iterable<CommentModel> list);
  Future<bool> clear();
}

class CommentsLocalDataSourceImpl extends CommentsLocalDataSource {
  CommentsLocalDataSourceImpl({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;
  Iterable<CommentModel>? _cache;

  @override
  Future<CommentModel?> get({required int id}) async {
    _cache ??= await getAll();
    return _cache?.firstWhereOrNull((element) => element.id == id);
  }

  @override
  Future<Iterable<CommentModel>?> getAll({
    int? offset,
    int? limit,
    int? postId,
  }) async {
    if (_cache == null) {
      final json = sharedPreferences.getStringList(CACHED_COMMENTS_TOKEN);
      if (json?.isNotEmpty ?? false) {
        _cache = await compute(_postsFromJson, json!);
      }
    }
    final res = postId == null
        ? _cache
        : _cache?.where((element) => element.postId == postId);
    return limit != null ? res?.take(limit + (offset ?? 0)) : res;
  }

  @override
  Future<bool> addAll(Iterable<CommentModel> list) async {
    var cache = await getAll();

    _cache = cache = [
      if (cache != null) ...cache,
      ...list,
    ];

    final data = await compute(_postsToJson, [...cache]);
    return sharedPreferences.setStringList(
      CACHED_COMMENTS_TOKEN,
      data,
    );
  }

  @override
  Future<bool> clear() async => sharedPreferences.remove(CACHED_COMMENTS_TOKEN);
}

List<String> _postsToJson(List<CommentModel> list) {
  return list.map<String>((e) => jsonEncode(e.toJson())).toList();
}

List<CommentModel> _postsFromJson(List<String> list) {
  final parsed = list.map((e) => jsonDecode(e) as Map<String, Object?>);
  return parsed
      .map<CommentModel>((json) => CommentModel.fromJson(json))
      .toList();
}
