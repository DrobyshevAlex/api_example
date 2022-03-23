import 'package:api_example/features/albums/bloc/album.dart';
import 'package:api_example/features/albums/data/models/album.dart';
import 'package:api_example/features/albums/di/album.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumListItemView extends StatelessWidget {
  const AlbumListItemView({Key? key, required this.item}) : super(key: key);
  final AlbumModel item;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: AlbumInj(
        albumId: item.id,
        child: BlocBuilder<AlbumBLoC, AlbumState>(
          builder: (context, state) {
            final thumb = state.data?.first;
            return ListTile(
              leading: SizedBox(
                width: 30,
                height: 30,
                child: thumb != null
                    ? CachedNetworkImage(
                        imageUrl: thumb.thumbnailUrl,
                      )
                    : const CircularProgressIndicator(),
              ),
              title: Text(item.title),
            );
          },
        ),
      ),
    );
  }
}
