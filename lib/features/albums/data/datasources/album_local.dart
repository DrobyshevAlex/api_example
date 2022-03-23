import 'dart:convert';

import 'package:api_example/features/albums/data/models/album.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AlbumLocalDataSource {
  Future<AlbumModel?> get({required int id});
  Future<Iterable<AlbumModel>?> getAll({int? offset, int? limit, int? userId});
  Future<bool> addAll(Iterable<AlbumModel> list);
  Future<bool> clear();
}

const String CACHED_ALBUM_TOKEN = 'albums';

class AlbumLocalDataSourceImpl implements AlbumLocalDataSource {
  AlbumLocalDataSourceImpl({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;
  Iterable<AlbumModel>? _cache;

  @override
  Future<bool> addAll(Iterable<AlbumModel> list) async {
    var cache = await getAll();

    _cache = cache = [
      if (cache != null) ...cache,
      ...list,
    ];

    return sharedPreferences.setStringList(
      CACHED_ALBUM_TOKEN,
      cache.map<String>((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  @override
  Future<bool> clear() => sharedPreferences.remove(CACHED_ALBUM_TOKEN);

  @override
  Future<AlbumModel?> get({required int id}) async {
    final cache = await getAll();
    return cache?.firstWhereOrNull((element) => element.id == id);
  }

  @override
  Future<Iterable<AlbumModel>?> getAll(
      {int? offset, int? limit, int? userId}) async {
    if (_cache == null) {
      final json = sharedPreferences.getStringList(CACHED_ALBUM_TOKEN);
      if (json?.isNotEmpty ?? false) {
        final data = json!.map((e) => jsonDecode(e) as Map<String, Object?>);
        _cache = data.map<AlbumModel>((e) => AlbumModel.fromJson(e));
      }
    }
    final res = userId == null
        ? _cache
        : _cache?.where((element) => element.userId == userId);
    return limit != null ? res?.take(limit + (offset ?? 0)) : res;
  }
}
