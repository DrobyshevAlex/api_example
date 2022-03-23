import 'package:api_example/features/posts/data/models/post.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'remote.g.dart';

abstract class PostsRemoteDataSource {
  Future<PostModel?> get({required int id});
  Future<Iterable<PostModel>?> getAll({int? offset, int? limit, int? userId});
}

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class PostsRemoteDataSourceImpl implements PostsRemoteDataSource {
  factory PostsRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _PostsRemoteDataSourceImpl;

  @override
  @GET('/posts')
  Future<List<PostModel>> getAll({
    @Query('userId') int? userId,
    int? offset,
    int? limit,
  });

  @override
  @GET('/posts/{id}')
  Future<PostModel> get({required int id});
}
