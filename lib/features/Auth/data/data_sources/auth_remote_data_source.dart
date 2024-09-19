import 'package:arapface/features/Auth/domain/entities/person_auth_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<void> login({required PersonAuthEntity personAuthEntity});
  Future<void> register({required PersonAuthEntity personAuthEntity});
}

class AuthRemoteDataSourceIple extends AuthRemoteDataSource {
  @override
  Future<void> login({required PersonAuthEntity personAuthEntity}) async {
     await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: personAuthEntity.email!, password: personAuthEntity.password!);
  }

  @override
  Future<void> register({required PersonAuthEntity personAuthEntity}) async {
    
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: personAuthEntity.email!,
      password: personAuthEntity.password!,
    );
  }
}
