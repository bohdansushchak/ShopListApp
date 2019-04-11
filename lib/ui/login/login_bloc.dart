import 'package:bloc/bloc.dart';
import 'package:shop_list_app/data/repository/repository.dart';
import 'package:shop_list_app/ui/login/login_event.dart';
import 'package:shop_list_app/ui/login/login_state.dart';
import 'package:shop_list_app/internal/exeptions.dart';

class LoginBloc extends Bloc<LoginPageEvent, LoginState> {
  final Repository _repository;

  LoginBloc(this._repository) : super();

  @override
  LoginState get initialState {
    return LoginState.initial();
  }

  @override
  Stream<LoginState> mapEventToState(LoginPageEvent event) async* {
    if (event is LoginEvent) {
      yield* _login(event);
    }
  }

  void logIn(String email, String password) {
    dispatch(LoginEvent((b) => b
      ..email = email
      ..password = password));
  }

  Stream<LoginState> _login(LoginEvent event) async* {
    yield LoginState.loading();
    try {
      final loginResult = await _repository.login(event.email, event.password);
      yield LoginState.success(loginResult.apiToken);
    } on ServerException catch (e) {
      yield LoginState.failure(e.message);
    }
  }
}
