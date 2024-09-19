

import 'package:arapface/features/Auth/domain/entities/person_auth_entity.dart';
import 'package:arapface/features/Auth/domain/usecases/register_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerUsecase) : super(RegisterInitial());
final RegisterUsecase registerUsecase;
  register({required PersonAuthEntity personAuthEntity})async{
    emit(RegisterLoading(),);
  var results=await  registerUsecase.call(personAuthEntity: personAuthEntity);
  results.fold((faile){
    emit(RegisterFailure(errorMessage: faile.errorMessage,),);
  }, (success){
    emit(RegisterSuccess(),);
  },);

  }
}
