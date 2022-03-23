import 'package:api_example/common/data/paged.dart';
import 'package:api_example/common/errors/errors.dart';
import 'package:api_example/features/users/data/datasources/local.dart';
import 'package:api_example/features/users/data/datasources/remote.dart';
import 'package:api_example/features/users/data/models/user.dart';

abstract class UsersRepository {
  Future<UserModel?> get(int id);
  Future<PagedResource<UserModel>> getAll({required int offset, int? limit});
}

class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl({
    required UsersRemoteDataSource remoteDataSource,
    required UsersLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;
  final UsersRemoteDataSource _remoteDataSource;
  final UsersLocalDataSource _localDataSource;

  @override
  Future<UserModel?> get(int id) async {
    try {
      final data = await _localDataSource.get(id: id);
      if (data != null) {
        return data;
      }
    } on Object {
      throw const CacheException();
    }
    return _remoteDataSource.get(id: id);
  }

  @override
  Future<PagedResource<UserModel>> getAll(
      {required int offset, int? limit}) async {
    try {
      final cache = await _localDataSource.getAll(offset: offset, limit: limit);
      if (cache?.isNotEmpty ?? false) {
        return PagedResource(data: cache!);
      }
    } catch (_) {
      _localDataSource.clear();
    }

    try {
      final data = await _remoteDataSource.getAll(offset: offset, limit: limit);
      if (data != null) {
        await _localDataSource.addAll(data);
      }
    } on Object {
      throw const ServerException();
    }

    // with order, unique
    final res = await _localDataSource.getAll(offset: offset, limit: limit);
    if (res?.isNotEmpty ?? false) {
      return PagedResource(data: res!);
    }
    throw const CacheException();
  }
}
