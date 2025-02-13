import 'package:assesment_task/data/model/auth_response.dart';
import 'package:dartz/dartz.dart';

abstract class AuthDataSource {
  Future<Either<AuthResponse, String>> signIn(String email, String password);
}
