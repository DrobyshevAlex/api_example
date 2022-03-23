import 'package:api_example/common/data/paged.dart';
import 'package:api_example/common/errors/errors.dart';
import 'package:api_example/features/posts/data/datasource/comments_local.dart';
import 'package:api_example/features/posts/data/datasource/comments_remote.dart';
import 'package:api_example/features/posts/data/models/comment.dart';

abstract class CommentsRepositiry {
  Future<PagedResource<CommentModel>> getAll(
      {required int postId, required int offset});
  Future<CommentModel> create({
    required int postId,
    required String name,
    required String email,
    required String body,
  });
}

class CommentsRepositiryImpl implements CommentsRepositiry {
  CommentsRepositiryImpl(
      {required CommentsLocalDataSource localDataSource,
      required CommentsRemoteDataSource remoteDataSource})
      : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;
  final CommentsLocalDataSource _localDataSource;
  final CommentsRemoteDataSource _remoteDataSource;

  @override
  Future<PagedResource<CommentModel>> getAll(
      {required int postId, required int offset}) async {
    final cache = await _localDataSource.getAll(postId: postId, offset: offset);
    if (cache?.isNotEmpty ?? false) {
      return PagedResource(
        data: cache!,
        // no load more api
        //nextPageKey: cache.length,
      );
    }

    try {
      final data = await _remoteDataSource.getAll(postId: postId);
      if (data != null) {
        await _localDataSource.addAll(data);
      }
    } on Object {
      throw const ServerException();
    }

    final res = await _localDataSource.getAll(postId: postId, offset: offset);
    if (res != null) {
      return PagedResource(
        data: res,
        // no load more api
        //nextPageKey: data.isNotEmpty ? cache.length : null,
      );
    }
    throw const CacheException();
  }

  @override
  Future<CommentModel> create({
    required int postId,
    required String name,
    required String email,
    required String body,
  }) async {
    try {
      final model = await _remoteDataSource.create(CommentCreateModel(
          postId: postId, name: name, email: email, body: body));
      if (model != null) {
        await _localDataSource.addAll([model]);
        return model;
      }
    } on Object {
      throw const ServerException();
    }
    throw const ServerException();
  }
}
