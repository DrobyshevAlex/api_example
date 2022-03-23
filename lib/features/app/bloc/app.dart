import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app.freezed.dart';

@freezed
class AppEvent with _$AppEvent {
  const AppEvent._();

  const factory AppEvent.init() = _InitAppEvent;
}

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState.initial() = _InitialAppState;
  const factory AppState.success(SharedPreferences sharedPrefs) =
      _SuccessAppState;
  const factory AppState.error() = _ErrorAppState;
}

class AppBLoC extends Bloc<AppEvent, AppState> {
  AppBLoC() : super(const AppState.initial());

  @override
  Stream<AppState> mapEventToState(AppEvent event) =>
      event.when<Stream<AppState>>(
        init: _init,
      );

  Stream<AppState> _init() async* {
    final sp = await SharedPreferences.getInstance();
    if (sp != null) {
      yield AppState.success(sp);
    } else {
      yield const AppState.error();
    }
  }
}
