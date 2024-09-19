import 'package:arapface/core/app_styles.dart';
import 'package:arapface/core/approutes.dart';
import 'package:arapface/features/Auth/domain/entities/person_auth_entity.dart';
import 'package:arapface/features/Auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:arapface/features/Auth/presentation/views/widgets/custom_button.dart';
import 'package:arapface/features/Auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatelessWidget {
  RegisterViewBody({super.key});
  late  String email;
  late  String password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Text(
              'ArapFace',
              style: AppStyles.textStyle40,
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Register',
                style: AppStyles.textStyle22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              obscureText: false,
              onSubmitted: (p0) {
                email = p0;
              },
              hint: 'Email',
              suffixIcon: Icon(Icons.email),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              obscureText: true,
              onSubmitted: (p0) {
                password = p0;
                
              },
              hint: 'Password',
              suffixIcon: Icon(Icons.password),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<RegisterCubit, RegisterState>(
              listener: (context, state) {
                if (state is RegisterSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Successsss'),
                    ),
                  );
                }
                if (state is RegisterFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.errorMessage),
                    ),
                  );
                }
              },
              builder: (context, state) {
                return CustomButton(
                  onTap: () {
                    BlocProvider.of<RegisterCubit>(context).register(
                      personAuthEntity: PersonAuthEntity(
                        email: email,
                        password: password,
                      ),
                    );
                  },
                  isLoading: state is RegisterLoading ? true : false,
                  buttonName: 'Register',
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You already hanve an account?',
                  style: AppStyles.textStyle22
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(Approutes.kLoginView);
                    },
                    child: Text(
                      'Login',
                      style: AppStyles.textStyle22
                          .copyWith(fontSize: 18, color: Colors.black),
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).viewInsets.bottom,
            // ),
          ],
        ),
      ),
    );
  }
}
