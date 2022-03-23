import 'package:api_example/features/users/data/models/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'remote.g.dart';

abstract class UsersRemoteDataSource {
  Future<UserModel?> get({required int id});
  Future<Iterable<UserModel>?> getAll({int? limit, int? offset});
}

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class UsersRemoteDataSourceImpl implements UsersRemoteDataSource {
  factory UsersRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _UsersRemoteDataSourceImpl;

  @override
  @GET('/users')
  Future<List<UserModel>> getAll({int? limit, int? offset});

  @override
  @GET('/users/{id}')
  Future<UserModel> get({required int id});
}
