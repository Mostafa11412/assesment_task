import 'package:assesment_task/domain/repo_contract/auth_repo/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  AuthRepo authRepo;
  @factoryMethod
  LoginCubit(this.authRepo) : super(LoginInitialState());

  signIn(String email, String password) async {
    if (!isClosed) emit(LoginLoadingState());

    var result = await authRepo.signIn(email, password);
    result.fold(
      (l) {
        if (!isClosed) emit(LoginSuccessState());
      },
      (r) {
        if (!isClosed) emit(LoginErrorState(r));
        debugPrint('Failed in cubit sign in');
      },
    );
  }
}
