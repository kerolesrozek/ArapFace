import 'package:arapface/features/Auth/data/auth_repos_imple/auth_repos_imple.dart';
import 'package:arapface/features/Auth/data/data_sources/auth_remote_data_source.dart';
import 'package:arapface/features/Auth/domain/usecases/register_usecase.dart';
import 'package:arapface/features/Auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:arapface/features/Auth/presentation/views/widgets/register_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        RegisterUsecase(
          authRepos: AuthReposImple(
            authRemoteDataSource: AuthRemoteDataSourceIple(),
          ),
        ),
      ),
      child: Scaffold(
        body: SafeArea(child: RegisterViewBody()),
      ),
    );
  }
}
