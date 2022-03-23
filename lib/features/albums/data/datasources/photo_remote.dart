import 'package:api_example/features/albums/data/models/photo.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'photo_remote.g.dart';

abstract class PhotoRemoteDataSource {
  Future<PhotoModel?> get({required int id});
  Future<Iterable<PhotoModel>?> getAll({int? offset, int? limit, int? albumId});
}

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class PhotoRemoteDataSourceImpl implements PhotoRemoteDataSource {
  factory PhotoRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _PhotoRemoteDataSourceImpl;

  @override
  @GET('/photos')
  Future<List<PhotoModel>> getAll({
    @Query('albumId') int? albumId,
    int? offset,
    int? limit,
  });

  @override
  @GET('/photos/{id}')
  Future<PhotoModel> get({required int id});
}
