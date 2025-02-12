import 'package:assesment_task/data/model/result.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Result, String>> signIn(String email, String password);
}
