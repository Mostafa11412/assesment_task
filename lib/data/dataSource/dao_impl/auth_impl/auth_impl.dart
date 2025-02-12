import 'package:assesment_task/core/api/api_manager.dart';
import 'package:assesment_task/core/utils/constants.dart';
import 'package:assesment_task/data/dataSource/dao_contract/auth_contract/auth_dao.dart';
import 'package:assesment_task/data/model/auth_response.dart';
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
      var response =
          await apiManager.postData(AppConstants.AuthEndPoint, body: {
        "userNameOrEmailAddress": "yasser@farid.com",
        "password": "123456",
        "rememberClient": true
      });

      AuthResponse authResponse = AuthResponse.fromJson(response.data);
      // if (!authResponse.success!) {
      //   return Right(authResponse.error['details']);
      // }
      return Left(authResponse);
    } catch (e) {
      debugPrint(e.toString());
      throw (Exception(e.toString()));
      return Right("حدث خطأ ما ");
    }
  }
}
