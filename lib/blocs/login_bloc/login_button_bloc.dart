import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:trim_spot_admin_side/utils/login/form_key.dart';

part 'login_button_event.dart';
part 'login_button_state.dart';

class LoginButtonBloc extends Bloc<LoginButtonEvent, LoginButtonState> {
  LoginButtonBloc() : super(LoginButtonInitial()) {
    on<LoginButtonPressed>(_loginButtonPressed);
  }
  _loginButtonPressed(
      LoginButtonPressed event, Emitter<LoginButtonState> emit) {
    if (loginFormKey.currentState!.validate()) {
      emit(NavigateToHomePage());
    } else {
      return;
    }
  }
}
