part of 'login_button_bloc.dart';

@immutable
sealed class LoginButtonEvent {}

final class LoginButtonPressed extends LoginButtonEvent{}