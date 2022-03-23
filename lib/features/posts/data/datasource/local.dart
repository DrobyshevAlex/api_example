import 'dart:convert';

import 'package:api_example/features/posts/data/models/post.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String CACHED_POSTS_TOKEN = 'posts';

abstract class PostsLocalDataSource {
  Future<PostModel?> get({required int id});
  Future<Iterable<PostModel>?> getAll({int? offset, int? limit, int? userId});
  Future<bool> addAll(Iterable<PostModel> list);
  Future<bool> clear();
}

class PostsLocalDataSourceImpl extends PostsLocalDataSource {
  PostsLocalDataSourceImpl({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;
  Iterable<PostModel>? _cache;

  @override
  Future<PostModel?> get({required int id}) async {
    _cache ??= await getAll();
    return _cache?.firstWhereOrNull((element) => element.id == id);
  }

  @override
  Future<Iterable<PostModel>?> getAll({
    int? offset,
    int? limit,
    int? userId,
  }) async {
    if (_cache == null) {
      final json = sharedPreferences.getStringList(CACHED_POSTS_TOKEN);
      if (json?.isNotEmpty ?? false) {
        _cache = await compute(_postsFromJson, json!);
      }
    }
    final res = userId == null
        ? _cache
        : _cache?.where((element) => element.userId == userId);
    return limit != null ? res?.take(limit + (offset ?? 0)) : res;
  }

  @override
  Future<bool> addAll(Iterable<PostModel> list) async {
    var cache = await getAll();

    _cache = cache = [
      if (cache != null) ...cache,
      ...list,
    ];

    final data = await compute(_postsToJson, [...cache]);
    return sharedPreferences.setStringList(
      CACHED_POSTS_TOKEN,
      data,
    );
  }

  @override
  Future<bool> clear() async => sharedPreferences.remove(CACHED_POSTS_TOKEN);
}

List<String> _postsToJson(List<PostModel> list) {
  return list.map<String>((e) => jsonEncode(e.toJson())).toList();
}

List<PostModel> _postsFromJson(List<String> list) {
  final parsed = list.map((e) => jsonDecode(e) as Map<String, Object?>);
  return parsed.map<PostModel>((json) => PostModel.fromJson(json)).toList();
}
