part of 'login_cubit.dart';

abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginSuccessState extends LoginState {
  final String successMessage = "Login Succeffully";
}

class LoginErrorState extends LoginState {
  final String errorMessage;
  LoginErrorState(this.errorMessage);
}

class LoginLoadingState extends LoginState {}
