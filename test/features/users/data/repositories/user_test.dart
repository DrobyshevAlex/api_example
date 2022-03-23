import 'dart:convert';

import 'package:api_example/features/users/data/datasources/local.dart';
import 'package:api_example/features/users/data/datasources/remote.dart';
import 'package:api_example/features/users/data/models/user.dart';
import 'package:api_example/features/users/data/repositories/users.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../resources/fetch.dart';

void main() {
  late MockLocalDataSource mockLocalDataSource;
  late MockRemoteDataSource mockRemoteDataSource;
  late UsersRepositoryImpl usersRepositoryImpl;
  late UserModel userModel;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();

    usersRepositoryImpl = UsersRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );

    final jsonMap = json.decode(fetchData('user.json')) as Map<String, dynamic>;
    userModel = UserModel.fromJson(jsonMap);
  });

  group('getUser', () {
    test(
      'should get user from local data source',
      () async {
        when(mockLocalDataSource.get(id: userModel.id))
            .thenAnswer((_) async => userModel);

        final result = await usersRepositoryImpl.get(userModel.id);
        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource.get(id: userModel.id));
        expect(result, userModel);
      },
    );

    test(
      'should get user from remote data source',
      () async {
        when(mockLocalDataSource.get(id: userModel.id))
            .thenAnswer((_) async => null);

        when(mockRemoteDataSource.get(id: userModel.id))
            .thenAnswer((_) async => userModel);

        final result = await usersRepositoryImpl.get(userModel.id);
        verify(mockRemoteDataSource.get(id: userModel.id));
        verify(mockLocalDataSource.get(id: userModel.id));
        expect(result, userModel);
      },
    );
  });
}

class MockRemoteDataSource extends Mock implements UsersRemoteDataSource {
  @override
  Future<UserModel?> get({required int id}) =>
      super.noSuchMethod(Invocation.method(#get, [], {#ids: id}),
          returnValue: Future.value(null)) as Future<UserModel?>;
}

class MockLocalDataSource extends Mock implements UsersLocalDataSource {
  @override
  Future<UserModel?> get({required int id}) =>
      super.noSuchMethod(Invocation.method(#get, [], {#ids: id}),
          returnValue: Future.value(null)) as Future<UserModel?>;
}
