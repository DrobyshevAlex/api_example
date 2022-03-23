import 'package:api_example/features/albums/bloc/album.dart';
import 'package:api_example/features/albums/data/repositories/albums.dart';
import 'package:api_example/features/albums/data/repositories/photos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumInj extends StatelessWidget {
  const AlbumInj({Key? key, required this.child, required this.albumId})
      : super(key: key);
  final Widget child;
  final int albumId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlbumBLoC(
        albumsRepository: context.read<AlbumsRepository>(),
        photosRepository: context.read<PhotosRepository>(),
      )..add(AlbumEvent.request(albumId, 0)),
      child: child,
    );
  }
}
