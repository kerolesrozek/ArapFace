import 'package:arapface/core/failures/failures.dart';
import 'package:arapface/features/Auth/domain/entities/person_auth_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepos {
  Future<Either<Failures,void>>register({required PersonAuthEntity personAuthEntity});
  Future<Either<Failures,void>>login({required PersonAuthEntity personAuthEntity});
  
}