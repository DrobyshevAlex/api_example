import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/albums/data/models/album.dart';
import 'package:api_example/features/albums/data/repositories/albums.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_list.freezed.dart';

@freezed
class AlbumListEvent with _$AlbumListEvent {
  const AlbumListEvent._();

  const factory AlbumListEvent.request(int? userId, int? offset, int? limit) =
      _RequestAlbumListEvent;
}

@freezed
class AlbumListState with _$AlbumListState {
  const factory AlbumListState({
    UnmodifiableListView<AlbumModel>? data,
    Exception? error,
    @Default(false) bool loading,
    int? nextPageKey,
  }) = _AlbumListState;
  const AlbumListState._();

  bool get hasData => data?.isNotEmpty ?? false;
}

class AlbumListBLoC extends Bloc<AlbumListEvent, AlbumListState> {
  AlbumListBLoC({required AlbumsRepository albumsRepository})
      : _albumsRepository = albumsRepository,
        super(const AlbumListState());
  final AlbumsRepository _albumsRepository;

  @override
  Stream<AlbumListState> mapEventToState(AlbumListEvent event) =>
      event.when<Stream<AlbumListState>>(
        request: _request,
      );

  Stream<AlbumListState> _request(int? userId, int? offset, int? limit) async* {
    yield state.copyWith(loading: true, error: null);
    try {
      final data = await _albumsRepository
          .getAll(userId: userId, offset: offset, limit: limit)
          .timeout(const Duration(seconds: FETCH_TIMEOUT));
      yield state.copyWith(
          loading: false, data: data.data, nextPageKey: data.nextPageKey);
    } on Exception catch (e) {
      yield state.copyWith(loading: false, error: e);
    }
  }
}
