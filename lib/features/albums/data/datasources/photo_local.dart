import 'dart:convert';

import 'package:api_example/features/albums/data/models/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PhotoLocalDataSource {
  Future<PhotoModel?> get({required int id});
  Future<Iterable<PhotoModel>?> getAll({int? offset, int? limit, int? albumId});
  Future<bool> addAll(Iterable<PhotoModel> list);
  Future<bool> clear();
}

const String CACHED_ALBUM_PHOTOS_TOKEN = 'album_photos';

class PhotoLocalDataSourceImpl implements PhotoLocalDataSource {
  PhotoLocalDataSourceImpl({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;
  Iterable<PhotoModel>? _cache;

  @override
  Future<bool> addAll(Iterable<PhotoModel> list) async {
    var cache = await getAll();

    _cache = cache = [
      if (cache != null) ...cache,
      ...list,
    ];

    return sharedPreferences.setStringList(
      CACHED_ALBUM_PHOTOS_TOKEN,
      cache.map<String>((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  @override
  Future<bool> clear() => sharedPreferences.remove(CACHED_ALBUM_PHOTOS_TOKEN);

  @override
  Future<PhotoModel?> get({required int id}) async {
    final cache = await getAll();
    return cache?.firstWhereOrNull((element) => element.id == id);
  }

  @override
  Future<Iterable<PhotoModel>?> getAll(
      {int? offset, int? limit, int? albumId}) async {
    if (_cache == null) {
      final json = sharedPreferences.getStringList(CACHED_ALBUM_PHOTOS_TOKEN);
      if (json?.isNotEmpty ?? false) {
        final data = json!.map((e) => jsonDecode(e) as Map<String, Object?>);
        _cache = data.map<PhotoModel>((e) => PhotoModel.fromJson(e));
      }
    }
    final res = albumId == null
        ? _cache
        : _cache?.where((element) => element.albumId == albumId);
    return limit != null ? res?.take(limit + (offset ?? 0)) : res;
  }
}
