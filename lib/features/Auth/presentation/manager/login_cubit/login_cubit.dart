import 'package:arapface/features/Auth/domain/entities/person_auth_entity.dart';
import 'package:arapface/features/Auth/domain/usecases/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginUsecase) : super(LoginInitial());
  final LoginUsecase loginUsecase;

  login({required PersonAuthEntity personAuthEntity}) async {
    emit(
      LoginLoading(),
    );
    var results = await loginUsecase.call(personAuthEntity: personAuthEntity);
    results.fold(
      (fail) {
        emit(
          LoginFailure(
            errorMessage: fail.errorMessage,
          ),
        );
      },
      (sucess) {
        emit(
          LoginSuccess(),
        );
      },
    );
  }
}
