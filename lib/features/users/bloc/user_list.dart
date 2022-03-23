import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/users/data/models/user.dart';
import 'package:api_example/features/users/data/repositories/users.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list.freezed.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const UserListEvent._();

  const factory UserListEvent.request([int? offset]) = _RequestUserListEvent;
}

@freezed
class UserListState with _$UserListState {
  const factory UserListState({
    UnmodifiableListView<UserModel>? data,
    Exception? error,
    @Default(false) bool loading,
    int? nextPageKey,
  }) = _UserListState;
}

class UserListBLoC extends Bloc<UserListEvent, UserListState> {
  UserListBLoC(UsersRepository usersRepository)
      : _usersRepository = usersRepository,
        super(const UserListState());
  final UsersRepository _usersRepository;

  @override
  Stream<UserListState> mapEventToState(UserListEvent event) =>
      event.when<Stream<UserListState>>(
        request: _request,
      );

  Stream<UserListState> _request(int? offset) async* {
    yield state.copyWith(loading: true, error: null);
    try {
      final data = await _usersRepository
          .getAll(offset: offset ?? 0)
          .timeout(const Duration(seconds: FETCH_TIMEOUT));
      yield state.copyWith(
          loading: false, data: data.data, nextPageKey: data.nextPageKey);
    } on Exception catch (e) {
      yield state.copyWith(loading: false, error: e);
    }
  }
}
