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
    //var token = _repository.token;
    return LoginState.initial(false);
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
    if (event.email.isEmpty || event.password.isEmpty) {
      if (event.email.isEmpty)
        yield LoginState.failure("Email can't be a empty");
      else
        yield LoginState.failure("Password can't be empty");
    } else {
      yield LoginState.loading();
      try {
        final loginResult =
            await _repository.login(event.email, event.password);
        yield LoginState.success(loginResult.apiToken);
      } on ServerException catch (e) {
        yield LoginState.failure(e.message);
      }
    }
  }
}
