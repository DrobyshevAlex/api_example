import 'package:api_example/common/data/paged.dart';
import 'package:api_example/common/errors/errors.dart';
import 'package:api_example/features/albums/data/datasources/album_local.dart';
import 'package:api_example/features/albums/data/datasources/album_remote.dart';
import 'package:api_example/features/albums/data/models/album.dart';

abstract class AlbumsRepository {
  Future<AlbumModel?> get({required int id});
  Future<PagedResource<AlbumModel>> getAll(
      {int? userId, int? offset, int? limit});
}

class AlbumsRepositoryImpl implements AlbumsRepository {
  AlbumsRepositoryImpl({
    required AlbumLocalDataSource localDataSource,
    required AlbumRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;
  final AlbumLocalDataSource _localDataSource;
  final AlbumRemoteDataSource _remoteDataSource;

  @override
  Future<AlbumModel?> get({required int id}) async {
    final item = await _localDataSource.get(id: id);
    if (item != null) {
      return item;
    } else {
      final item = await _remoteDataSource.get(id: id);
      if (item != null) {
        _localDataSource.addAll([item]);
      }
      return item;
    }
  }

  @override
  Future<PagedResource<AlbumModel>> getAll(
      {int? userId, int? offset, int? limit}) async {
    final cache = await _localDataSource.getAll(
        userId: userId, limit: limit, offset: offset);
    if (cache?.isNotEmpty ?? false) {
      return PagedResource(
        data: cache!,
        // no load more api
        //nextPageKey: cache.length,
      );
    }

    try {
      final data = await _remoteDataSource.getAll(userId: userId);
      if (data != null) {
        await _localDataSource.addAll(data);
      }
    } on Object {
      throw const ServerException();
    }

    final res = await _localDataSource.getAll(
        userId: userId, limit: limit, offset: offset);
    if (res != null) {
      return PagedResource(
        data: res,
        // no load more api
        //nextPageKey: data.isNotEmpty ? cache.length : null,
      );
    }
    throw const CacheException();
  }
}
