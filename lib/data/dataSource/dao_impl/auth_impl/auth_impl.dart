import 'package:assesment_task/core/api/api_manager.dart';
import 'package:assesment_task/core/utils/constants.dart';
import 'package:assesment_task/data/dataSource/dao_contract/auth_dao_contract/auth_dao_contract.dart';
import 'package:assesment_task/data/model/auth/auth_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl extends AuthDataSource {
  ApiManager apiManager;
  @factoryMethod
  AuthDataSourceImpl(this.apiManager);
  @override
  Future<Either<AuthResponse, String>> signIn(
      String email, String password) async {
    try {
      var response = await apiManager.postData(AppConstants.authEndPoint,
          body: {
            "userNameOrEmailAddress": email,
            "password": password,
            "rememberClient": true
          });

      AuthResponse authResponse = AuthResponse.fromJson(response.data);
      if (!authResponse.success!) {
        return Right(
            authResponse.error['details'].replaceAll(RegExp(r'[\[\]]'), ''));
      }
      return Left(authResponse);
    } catch (e) {
      debugPrint(e.toString());
      return Right("حدث خطأ ما ");
    }
  }
}
