import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/posts/data/models/comment.dart';
import 'package:api_example/features/posts/data/repositories/comments.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_list.freezed.dart';

@freezed
class CommentListEvent with _$CommentListEvent {
  const CommentListEvent._();

  const factory CommentListEvent.request(int postId, int offset) =
      RequestCommentListEvent;
}

@freezed
class CommentListState with _$CommentListState {
  const factory CommentListState({
    UnmodifiableListView<CommentModel>? data,
    Exception? error,
    @Default(false) bool loading,
    int? nextPageKey,
  }) = _CommentListStateState;
  const CommentListState._();

  bool get hasData => data?.isNotEmpty ?? false;
}

class CommentListBLoC extends Bloc<CommentListEvent, CommentListState> {
  CommentListBLoC({required CommentsRepositiry commentsRepositiry})
      : _commentsRepositiry = commentsRepositiry,
        super(const CommentListState());
  final CommentsRepositiry _commentsRepositiry;

  @override
  Stream<CommentListState> mapEventToState(CommentListEvent event) =>
      event.when<Stream<CommentListState>>(
        request: _request,
      );

  Stream<CommentListState> _request(int postId, int offset) async* {
    yield state.copyWith(loading: true, error: null);
    try {
      final data = await _commentsRepositiry
          .getAll(postId: postId, offset: offset)
          .timeout(const Duration(seconds: FETCH_TIMEOUT));
      yield state.copyWith(
          loading: false, data: data.data, nextPageKey: data.nextPageKey);
    } on Exception catch (e) {
      yield state.copyWith(loading: false, error: e);
    }
  }
}
