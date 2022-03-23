import 'package:api_example/features/posts/data/models/comment.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'comments_remote.g.dart';

abstract class CommentsRemoteDataSource {
  Future<CommentModel?> create(CommentCreateModel comment);
  Future<Iterable<CommentModel>?> getAll(
      {int? offset, int? limit, int? postId});
}

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class CommentsRemoteDataSourceImpl
    implements CommentsRemoteDataSource {
  factory CommentsRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _CommentsRemoteDataSourceImpl;

  @override
  @GET('/comments')
  Future<List<CommentModel>> getAll({
    @Query('postId') int? postId,
    int? offset,
    int? limit,
  });

  @override
  @POST('/comments')
  Future<CommentModel> create(@Body() CommentCreateModel comment);
}
