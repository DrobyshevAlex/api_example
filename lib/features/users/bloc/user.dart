import 'package:api_example/common/config/defaults.dart';
import 'package:api_example/features/users/data/models/user.dart';
import 'package:api_example/features/users/data/repositories/users.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const UserEvent._();

  const factory UserEvent.request(int userId) = _RequestUserEvent;
}

@freezed
class UserState with _$UserState {
  const UserState._();

  const factory UserState.initial() = InitialUserState;
  const factory UserState.loading() = LoadingUserState;
  const factory UserState.success(UserModel? user) = SuccessUserState;
  const factory UserState.error(Exception e) = ErrorUserState;
}

class UserBLoC extends Bloc<UserEvent, UserState> {
  UserBLoC(UsersRepository usersRepository)
      : _usersRepository = usersRepository,
        super(const UserState.initial());
  final UsersRepository _usersRepository;

  @override
  Stream<UserState> mapEventToState(UserEvent event) =>
      event.when<Stream<UserState>>(
        request: _request,
      );

  Stream<UserState> _request(int userId) async* {
    yield const UserState.loading();
    try {
      yield UserState.success(await _usersRepository
          .get(userId)
          .timeout(const Duration(seconds: FETCH_TIMEOUT)));
    } on Exception catch (e) {
      yield UserState.error(e);
    }
  }
}
