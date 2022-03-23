import 'dart:convert';

import 'package:api_example/features/users/data/models/user.dart';
import 'package:collection/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String CACHED_USERS_TOKEN = 'users';

abstract class UsersLocalDataSource {
  Future<UserModel?> get({required int id});
  Future<Iterable<UserModel>?> getAll({int? limit, int? offset});
  Future<bool> addAll(Iterable<UserModel> list);
  Future<bool> clear();
}

class UsersLocalDataSourceImpl extends UsersLocalDataSource {
  UsersLocalDataSourceImpl({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;
  Iterable<UserModel>? _cache;

  @override
  Future<UserModel?> get({required int id}) async {
    _cache ??= await getAll();
    return _cache?.firstWhereOrNull((element) => element.id == id);
  }

  @override
  Future<Iterable<UserModel>?> getAll({int? limit, int? offset}) async {
    if (_cache == null) {
      final json = sharedPreferences.getStringList(CACHED_USERS_TOKEN);
      if (json?.isNotEmpty ?? false) {
        final data = json!.map((e) => jsonDecode(e) as Map<String, Object?>);
        _cache = data.map<UserModel>((e) => UserModel.fromJson(e));
      }
    }
    return limit != null ? _cache?.take(limit + (offset ?? 0)) : _cache;
  }

  @override
  Future<bool> addAll(Iterable<UserModel> list) async {
    var cache = await getAll();

    _cache = cache = [
      if (cache != null) ...cache,
      ...list,
    ];

    return sharedPreferences.setStringList(
      CACHED_USERS_TOKEN,
      cache.map<String>((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  @override
  Future<bool> clear() async => sharedPreferences.remove(CACHED_USERS_TOKEN);
}
