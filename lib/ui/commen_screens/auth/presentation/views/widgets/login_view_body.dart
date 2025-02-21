import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/commen_screens/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:untitled36/ui/commen_screens/startupscreen.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/widgets/show_snack_bar.dart';
import '../../bloc/auth/auth_state.dart';
import 'custom_auth_button.dart';
import 'custom_auth_text_field.dart';
import 'custom_password_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is LoginLoading) {
              Scaffold(
                  body: Center(
                child: CircularProgressIndicator(),
              ));
            } else if (state is LoginSuccess) {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return StartUpView();
                },
              ));
            } else if (state is LoginFailure) {
              showSnackBar(context, state.erMessage);
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Image.asset(
                  'assets/logo.png',
                  height: 105,
                  width: 105,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Welcome back !',
                  style: TextStyles.style16SemiBold.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    'To Continue , Login Now',
                    style: TextStyles.style14Regular.copyWith(
                      color: AppColors.mediumGrey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 85,
                ),
                CustomAuthTextField(
                  iconPath: 'assets/icons/phone.png',
                  hintText: 'Phone Number',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomPasswordTextField(
                  hintText: 'Password',
                  controller: passwordController,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    child: Text(
                      'Forget Password ?',
                      style: TextStyles.style12Regular.copyWith(
                        color: AppColors.mediumGrey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomAuthButton(
                  onTap: () {
                    context.read<AuthCubit>().login(
                          emailController.text,
                          passwordController.text,
                        );
                  },
                  text: 'Login',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
