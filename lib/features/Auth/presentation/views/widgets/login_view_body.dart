
import 'package:arapface/core/app_styles.dart';
import 'package:arapface/features/Auth/presentation/views/widgets/custom_button.dart';
import 'package:arapface/features/Auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
        const    SizedBox(
              height: 30,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'LogIn',
                style: AppStyles.textStyle22,
              ),
            ),
        const    SizedBox(
              height: 10,
            ),
            CustomTextField(
              obscureText: false,
              hint: 'Email',
              suffixIcon: Icon(Icons.email),
            ),
        const    SizedBox(
              height: 20,
            ),
            CustomTextField(
              obscureText: true,
              hint: 'Password',
              suffixIcon: Icon(Icons.password),
            ),
          const  SizedBox(
              height: 20,
            ),
          CustomButton(
            buttonName: 'LogIn',
          ),
        const    SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You dont hanve an account?',
                  style: AppStyles.textStyle22
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: (){
                    GoRouter.of(context).pop();
                  },
            child: Text( 'Register',
                  style: AppStyles.textStyle22.copyWith(
                    fontSize: 18,
                    color: Colors.black
                  ),
            ))
              ],
            ),
          const  SizedBox(
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
