import 'package:bloc/bloc.dart';
import 'package:shop_list_app/data/repository/repository.dart';
import 'package:shop_list_app/ui/login/login_event.dart';
import 'package:shop_list_app/ui/login/login_state.dart';

class LoginBloc extends Bloc<LoginPageEvent, LoginState> {
  final Repository _repository;

  LoginBloc(this._repository) : super();

  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(
      LoginState currentState, LoginPageEvent event) async* {
    if (event is LoginEvent) {
      yield* login(event);
    }
  }

  Stream<LoginState> login(LoginEvent event) async* {
    if (event.email.isEmpty || event.password.isEmpty) {
      yield LoginState.initial();
    } else {
      yield LoginState.loading();
    }

    try {
      final loginResult = await _repository.
    }
  }
}
