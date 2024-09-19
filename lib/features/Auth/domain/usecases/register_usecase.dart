import 'package:arapface/core/failures/failures.dart';
import 'package:arapface/features/Auth/domain/entities/person_auth_entity.dart';
import 'package:arapface/features/Auth/domain/repos/auth_repos.dart';
import 'package:dartz/dartz.dart';

class RegisterUsecase {
 final AuthRepos authRepos;

  RegisterUsecase({required this.authRepos});

 Future<Either<Failures, void>> call({required PersonAuthEntity personAuthEntity}){
   return authRepos.register(personAuthEntity: personAuthEntity);
  }
}