import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/posts/data/models/post.dart';
import 'package:api_example/features/posts/data/repositories/posts.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
class PostEvent with _$PostEvent {
  const PostEvent._();

  const factory PostEvent.request(int id) = _RequestPostEvent;
}

@freezed
class PostState with _$PostState {
  const PostState._();

  const factory PostState.initial() = _InitialPostState;
  const factory PostState.loading() = _LoadingPostState;
  const factory PostState.success(PostModel? post) = _SuccessPostState;
  const factory PostState.error(Exception e) = _ErrorPostState;
}

class PostBLoC extends Bloc<PostEvent, PostState> {
  PostBLoC(PostsRepository postsRepository)
      : _postsRepository = postsRepository,
        super(const PostState.initial());
  final PostsRepository _postsRepository;

  @override
  Stream<PostState> mapEventToState(PostEvent event) =>
      event.when<Stream<PostState>>(
        request: _request,
      );

  Stream<PostState> _request(int id) async* {
    yield const PostState.loading();
    try {
      yield PostState.success(await _postsRepository
          .get(id)
          .timeout(const Duration(seconds: FETCH_TIMEOUT)));
    } on Exception catch (e) {
      yield PostState.error(e);
    }
  }
}
