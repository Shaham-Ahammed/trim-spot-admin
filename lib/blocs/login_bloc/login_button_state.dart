part of 'login_button_bloc.dart';

@immutable
sealed class LoginButtonState {}

final class LoginButtonInitial extends LoginButtonState {}

final class NavigateToHomePage extends LoginButtonState{}