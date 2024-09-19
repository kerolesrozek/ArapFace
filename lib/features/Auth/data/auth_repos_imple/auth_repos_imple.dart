import 'package:arapface/core/failures/failures.dart';
import 'package:arapface/features/Auth/data/data_sources/auth_remote_data_source.dart';
import 'package:arapface/features/Auth/domain/entities/person_auth_entity.dart';
import 'package:arapface/features/Auth/domain/repos/auth_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthReposImple extends AuthRepos {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthReposImple({required this.authRemoteDataSource});
  @override
  Future<Either<Failures, void>> login(
      {required PersonAuthEntity personAuthEntity}) async {
    try {
  void data =
      await authRemoteDataSource.login(personAuthEntity: personAuthEntity);
  return right(data);
}  catch (e) {
  if(e is FirebaseAuthException){
    return left(Failures(errorMessage: e.toString(),),);
  }
  return left(Failures(errorMessage: e.toString(),),);
 
}
  }

  @override
  Future<Either<Failures, void>> register(
      {required PersonAuthEntity personAuthEntity})async {
    try {
  void data =
      await authRemoteDataSource.register(personAuthEntity: personAuthEntity);
  return right(data);
}  catch (e) {
  if(e is FirebaseAuthException){
    return left(Failures(errorMessage: e.toString(),),);
  }
  return left(Failures(errorMessage: e.toString(),),);
 
}
  }
}
