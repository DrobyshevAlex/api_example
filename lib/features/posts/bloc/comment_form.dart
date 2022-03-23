import 'package:api_example/common/validators/email.dart';
import 'package:api_example/common/validators/empty.dart';
import 'package:api_example/features/posts/data/repositories/comments.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_form.freezed.dart';

@freezed
class CommentFormEvent with _$CommentFormEvent {
  const CommentFormEvent._();

  const factory CommentFormEvent.name(String v) = _NameCommentFormEvent;
  const factory CommentFormEvent.email(String v) = _EmailCommentFormEvent;
  const factory CommentFormEvent.body(String v) = _BodyCommentFormEvent;
  const factory CommentFormEvent.request(int postId) = _RequestCommentFormEvent;
}

@freezed
class CommentFormState with _$CommentFormState {
  const factory CommentFormState({
    @Default(EmptyInput.pure()) EmptyInput name,
    @Default(EmailInput.pure()) EmailInput email,
    @Default(EmptyInput.pure()) EmptyInput body,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _CommentFormState;
}

class CommentFormBLoC extends Bloc<CommentFormEvent, CommentFormState> {
  CommentFormBLoC({
    required CommentsRepositiry commentsRepositiry,
  })  : _commentsRepositiry = commentsRepositiry,
        super(const CommentFormState());
  final CommentsRepositiry _commentsRepositiry;

  @override
  Stream<CommentFormState> mapEventToState(CommentFormEvent event) =>
      event.when<Stream<CommentFormState>>(
        name: _name,
        email: _email,
        body: _body,
        request: _request,
      );

  Stream<CommentFormState> _name(String v) async* {
    final val = EmptyInput.dirty(v);
    yield state.copyWith(
      name: val,
      status: Formz.validate([val, state.email, state.body]),
    );
  }

  Stream<CommentFormState> _email(String v) async* {
    final val = EmailInput.dirty(v);
    yield state.copyWith(
      email: val,
      status: Formz.validate([val, state.name, state.body]),
    );
  }

  Stream<CommentFormState> _body(String v) async* {
    final val = EmptyInput.dirty(v);
    yield state.copyWith(
      body: val,
      status: Formz.validate([val, state.name, state.email]),
    );
  }

  Stream<CommentFormState> _request(int postId) async* {
    yield state.copyWith(status: FormzStatus.submissionInProgress);
    try {
      await _commentsRepositiry.create(
        postId: postId,
        name: state.name.value,
        email: state.email.value,
        body: state.body.value,
      );
      yield state.copyWith(status: FormzStatus.submissionSuccess);
    } on Exception catch (_) {
      yield state.copyWith(status: FormzStatus.submissionFailure);
    }
  }
}
