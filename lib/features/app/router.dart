import 'package:api_example/features/albums/presentation/pages/album.dart';
import 'package:api_example/features/albums/presentation/pages/album_list.dart';
import 'package:api_example/features/posts/presentation/pages/pages.dart';
import 'package:api_example/features/users/data/models/user.dart';
import 'package:api_example/features/users/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppRouter {
  static MaterialPageRoute<void> users() => MaterialPageRoute<void>(
        builder: (_) => const UserListPage(),
      );

  static MaterialPageRoute<void> userShow(int userId) =>
      MaterialPageRoute<void>(
        builder: (_) => UserPage(
          userId: userId,
        ),
      );

  static MaterialPageRoute<void> posts(UserModel user) =>
      MaterialPageRoute<void>(
        builder: (_) => PostListPage(user: user),
      );

  static MaterialPageRoute<void> postShow(int postId) =>
      MaterialPageRoute<void>(
        builder: (_) => PostPage(
          postId: postId,
        ),
      );

  static MaterialPageRoute<void> albums(UserModel user) =>
      MaterialPageRoute<void>(
        builder: (_) => AlbumListPage(user: user),
      );

  static MaterialPageRoute<void> albumShow(int albumId) =>
      MaterialPageRoute<void>(
        builder: (_) => AlbumPage(
          albumId: albumId,
        ),
      );
}
