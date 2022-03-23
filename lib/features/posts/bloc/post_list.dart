import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/posts/data/models/post.dart';
import 'package:api_example/features/posts/data/repositories/posts.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list.freezed.dart';

@freezed
class PostListEvent with _$PostListEvent {
  const PostListEvent._();

  const factory PostListEvent.request(int offset, int limit, int? userId) =
      RequestPostListEvent;
}

@freezed
class PostListState with _$PostListState {
  const factory PostListState({
    UnmodifiableListView<PostModel>? data,
    Exception? error,
    @Default(false) bool loading,
    int? nextPageKey,
  }) = _PostListState;
  const PostListState._();

  bool get hasData => data?.isNotEmpty ?? false;
}

class PostListBLoC extends Bloc<PostListEvent, PostListState> {
  PostListBLoC(PostsRepository postsRepository)
      : _postsRepository = postsRepository,
        super(const PostListState());
  final PostsRepository _postsRepository;

  @override
  Stream<PostListState> mapEventToState(PostListEvent event) =>
      event.when<Stream<PostListState>>(
        request: _request,
      );

  Stream<PostListState> _request(int offset, int limit, int? userId) async* {
    yield state.copyWith(loading: true, error: null);
    try {
      final data = await _postsRepository
          .getAll(userId: userId, offset: offset, limit: limit)
          .timeout(const Duration(seconds: FETCH_TIMEOUT));
      yield state.copyWith(
          loading: false, data: data.data, nextPageKey: data.nextPageKey);
    } on Exception catch (e) {
      yield state.copyWith(loading: false, error: e);
    }
  }
}
