import 'package:api_example/features/albums/bloc/album.dart';
import 'package:api_example/features/albums/di/album.dart';
import 'package:api_example/features/app/presentation/components/components.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({Key? key, required this.albumId}) : super(key: key);
  final int albumId;

  @override
  Widget build(BuildContext context) {
    return AlbumInj(
      albumId: albumId,
      child: BlocBuilder<AlbumBLoC, AlbumState>(
        builder: (context, state) => Scaffold(
          appBar: SimpleAppBar(
              title:
                  state.album != null ? '${state.album?.title}' : 'Loading...'),
          body: AlbumSlider(albumId: albumId),
        ),
      ),
    );
  }
}

class AlbumSlider extends StatelessWidget {
  const AlbumSlider({Key? key, required this.albumId}) : super(key: key);
  final int albumId;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AlbumBLoC>().state;
    final size = MediaQuery.of(context).size;
    return state.hasData
        ? CarouselSlider(
            options: CarouselOptions(
              height: size.height,
              viewportFraction: 0.9,
              enlargeCenterPage: false,
            ),
            items: state.data
                ?.map(
                  (item) => SizedBox(
                    child: Stack(
                      children: [
                        Center(
                          child: CachedNetworkImage(
                            imageUrl: item.url,
                            fit: BoxFit.cover,
                            height: size.height,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: double.infinity,
                              color: Colors.black54,
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                item.title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          )
        : const LoaderView();
  }
}
