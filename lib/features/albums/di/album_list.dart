import 'package:api_example/features/albums/bloc/album_list.dart';
import 'package:api_example/features/albums/data/repositories/albums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumListInj extends StatelessWidget {
  const AlbumListInj({Key? key, required this.child, this.limit, this.userId})
      : super(key: key);
  final Widget child;
  final int? userId;
  final int? limit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AlbumListBLoC(albumsRepository: context.read<AlbumsRepository>())
            ..add(AlbumListEvent.request(userId, 0, limit)),
      child: child,
    );
  }
}
