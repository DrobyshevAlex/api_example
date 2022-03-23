import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/albums/data/models/album.dart';
import 'package:api_example/features/albums/data/models/photo.dart';
import 'package:api_example/features/albums/data/repositories/albums.dart';
import 'package:api_example/features/albums/data/repositories/photos.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';

@freezed
class AlbumEvent with _$AlbumEvent {
  const AlbumEvent._();

  const factory AlbumEvent.request(int albumId, int offset) = RequestAlbumEvent;
}

@freezed
class AlbumState with _$AlbumState {
  const factory AlbumState({
    AlbumModel? album,
    UnmodifiableListView<PhotoModel>? data,
    Exception? error,
    @Default(false) bool loading,
    int? nextPageKey,
  }) = _AlbumState;
  const AlbumState._();

  bool get hasData => data?.isNotEmpty ?? false;
}

class AlbumBLoC extends Bloc<AlbumEvent, AlbumState> {
  AlbumBLoC({
    required AlbumsRepository albumsRepository,
    required PhotosRepository photosRepository,
  })  : _albumsRepository = albumsRepository,
        _photosRepository = photosRepository,
        super(const AlbumState());
  final AlbumsRepository _albumsRepository;
  final PhotosRepository _photosRepository;

  @override
  Stream<AlbumState> mapEventToState(AlbumEvent event) =>
      event.when<Stream<AlbumState>>(
        request: _request,
      );

  Stream<AlbumState> _request(int albumId, int offset) async* {
    yield state.copyWith(loading: true, error: null);
    try {
      if (state.album == null) {
        final album = await _albumsRepository
            .get(id: albumId)
            .timeout(const Duration(seconds: FETCH_TIMEOUT));
        yield state.copyWith(album: album);
      }
      final paged = await _photosRepository
          .getAll(albumId: albumId, offset: offset)
          .timeout(const Duration(seconds: FETCH_TIMEOUT));
      yield state.copyWith(
          loading: false, data: paged.data, nextPageKey: paged.nextPageKey);
    } on Exception catch (e) {
      yield state.copyWith(loading: false, error: e);
    }
  }
}
