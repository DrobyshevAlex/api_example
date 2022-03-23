import 'package:api_example/common/data/paged.dart';
import 'package:api_example/common/errors/errors.dart';
import 'package:api_example/features/albums/data/datasources/photo_local.dart';
import 'package:api_example/features/albums/data/datasources/photo_remote.dart';
import 'package:api_example/features/albums/data/models/photo.dart';

abstract class PhotosRepository {
  Future<PagedResource<PhotoModel>> getAll(
      {int? albumId, int? offset, int? limit});
}

class PhotosRepositoryImpl implements PhotosRepository {
  PhotosRepositoryImpl({
    required PhotoLocalDataSource localDataSource,
    required PhotoRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;
  final PhotoLocalDataSource _localDataSource;
  final PhotoRemoteDataSource _remoteDataSource;

  @override
  Future<PagedResource<PhotoModel>> getAll(
      {int? albumId, int? offset, int? limit}) async {
    final cache = await _localDataSource.getAll(
        albumId: albumId, limit: limit, offset: offset);
    if (cache?.isNotEmpty ?? false) {
      return PagedResource(
        data: cache!,
        // no load more api
        //nextPageKey: cache.length,
      );
    }

    try {
      final data = await _remoteDataSource.getAll(albumId: albumId);
      if (data != null) {
        await _localDataSource.addAll(data);
      }
    } on Object {
      throw const ServerException();
    }

    final res = await _localDataSource.getAll(
        albumId: albumId, limit: limit, offset: offset);
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
