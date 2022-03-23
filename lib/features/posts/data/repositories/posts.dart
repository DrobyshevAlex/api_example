import 'package:api_example/common/data/paged.dart';
import 'package:api_example/common/errors/errors.dart';
import 'package:api_example/features/posts/data/datasource/local.dart';
import 'package:api_example/features/posts/data/datasource/remote.dart';
import 'package:api_example/features/posts/data/models/post.dart';

abstract class PostsRepository {
  Future<PostModel?> get(int id);
  Future<PagedResource<PostModel>> getAll(
      {int? userId, required int offset, required int limit});
}

class PostsRepositoryImpl implements PostsRepository {
  PostsRepositoryImpl(
      {required PostsRemoteDataSource remoteDataSource,
      required PostsLocalDataSource localDataSource})
      : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;
  final PostsRemoteDataSource _remoteDataSource;
  final PostsLocalDataSource _localDataSource;

  @override
  Future<PostModel?> get(int id) async {
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
  Future<PagedResource<PostModel>> getAll(
      {int? userId, required int offset, required int limit}) async {
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
