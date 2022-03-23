import 'package:api_example/features/albums/data/datasources/album_local.dart';
import 'package:api_example/features/albums/data/datasources/album_remote.dart';
import 'package:api_example/features/albums/data/datasources/photo_local.dart';
import 'package:api_example/features/albums/data/datasources/photo_remote.dart';
import 'package:api_example/features/albums/data/repositories/albums.dart';
import 'package:api_example/features/albums/data/repositories/photos.dart';
import 'package:api_example/features/app/bloc/app.dart';
import 'package:api_example/features/posts/data/datasource/comments_local.dart';
import 'package:api_example/features/posts/data/datasource/comments_remote.dart';
import 'package:api_example/features/posts/data/datasource/local.dart';
import 'package:api_example/features/posts/data/datasource/remote.dart';
import 'package:api_example/features/posts/data/repositories/comments.dart';
import 'package:api_example/features/posts/data/repositories/posts.dart';
import 'package:api_example/features/users/data/datasources/local.dart';
import 'package:api_example/features/users/data/datasources/remote.dart';
import 'package:api_example/features/users/data/repositories/users.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInj extends StatefulWidget {
  const AppInj({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<AppInj> createState() => _AppInjState();
}

class _AppInjState extends State<AppInj> {
  final _dio = Dio();

  @override
  void initState() {
    _dio.interceptors
        .add(LogInterceptor(responseBody: false, requestBody: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider<AppBLoC>(
        create: (context) => AppBLoC()..add(const AppEvent.init()),
        child: BlocBuilder<AppBLoC, AppState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => widget.child,
            success: (sp) => providers(sp),
          ),
        ),
      );

  Widget providers(SharedPreferences sp) => MultiProvider(
        providers: [
          Provider<Dio>.value(value: _dio),
          RepositoryProvider<UsersRepository>(
            create: (context) => UsersRepositoryImpl(
                remoteDataSource: UsersRemoteDataSourceImpl(
                  _dio,
                ),
                localDataSource: UsersLocalDataSourceImpl(sharedPreferences: sp)
                //..clear(),
                ),
          ),
          RepositoryProvider<PostsRepository>(
            create: (context) => PostsRepositoryImpl(
                localDataSource:
                    PostsLocalDataSourceImpl(sharedPreferences: sp),
                remoteDataSource: PostsRemoteDataSourceImpl(
                  _dio,
                )
                //..clear(),
                ),
          ),
          RepositoryProvider<AlbumsRepository>(
            create: (context) => AlbumsRepositoryImpl(
                localDataSource:
                    AlbumLocalDataSourceImpl(sharedPreferences: sp),
                remoteDataSource: AlbumRemoteDataSourceImpl(_dio)
                //..clear(),
                ),
          ),
          RepositoryProvider<PhotosRepository>(
            create: (context) => PhotosRepositoryImpl(
                localDataSource:
                    PhotoLocalDataSourceImpl(sharedPreferences: sp),
                remoteDataSource: PhotoRemoteDataSourceImpl(_dio)
                //..clear(),
                ),
          ),
          RepositoryProvider<CommentsRepositiry>(
            create: (context) => CommentsRepositiryImpl(
                localDataSource:
                    CommentsLocalDataSourceImpl(sharedPreferences: sp),
                remoteDataSource: CommentsRemoteDataSourceImpl(_dio)
                //..clear(),
                ),
          ),
        ],
        child: widget.child,
      );
}
