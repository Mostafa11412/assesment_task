import 'package:assesment_task/data/dataSource/dao_contract/auth_contract/auth_dao.dart';
import 'package:assesment_task/data/model/auth_response.dart';
import 'package:assesment_task/data/model/result.dart';
import 'package:assesment_task/domain/repo_contract/auth_repo/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl extends AuthRepo {
  AuthDataSource authDataSource;
  @factoryMethod
  AuthRepoImpl(this.authDataSource);
  @override
  Future<Either<Result, String>> signIn(String email, String password) async {
    try {
      var result = await authDataSource.signIn(email, password);
      return result.fold((l) {
        AuthResponse authResponse = l;
        return Left(authResponse.result!);
      }, (r) {
        return Right(r);
      });
    } catch (e) {
      return Right(e.toString());
    }
  }
}
