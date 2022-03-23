import 'package:api_example/features/albums/data/models/album.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'album_remote.g.dart';

abstract class AlbumRemoteDataSource {
  Future<AlbumModel?> get({required int id});
  Future<Iterable<AlbumModel>?> getAll({int? offset, int? limit, int? userId});
}

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class AlbumRemoteDataSourceImpl implements AlbumRemoteDataSource {
  factory AlbumRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _AlbumRemoteDataSourceImpl;

  @override
  @GET('/albums')
  Future<List<AlbumModel>> getAll({
    @Query('userId') int? userId,
    int? offset,
    int? limit,
  });

  @override
  @GET('/albums/{id}')
  Future<AlbumModel> get({required int id});
}
