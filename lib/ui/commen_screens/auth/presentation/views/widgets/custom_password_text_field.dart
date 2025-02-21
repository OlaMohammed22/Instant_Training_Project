import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/text_styles.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../bloc/password_visibility/password_bloc.dart';
import '../../bloc/password_visibility/password_event.dart';
import '../../bloc/password_visibility/password_state.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({
    super.key,
    this.isObscure = false,
    required this.hintText,
    this.controller,
  });

  final bool isObscure;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return PasswordBloc();
      },
      child:
          BlocBuilder<PasswordBloc, PasswordState>(builder: (context, state) {
        return TextFormField(
          validator: (data) {
            if (data!.isEmpty) {
              return 'Field Is Required';
            }
            return null;
          },
          cursorColor: AppColors.primaryColor,
          obscureText: !state.isPasswordVisible,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: SizedBox(
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/lock.png',
                    fit: BoxFit.fitHeight,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/icons/cursor.png',
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
            ),
            hintText: hintText,
            hintStyle:
                TextStyles.style14Regular.copyWith(color: AppColors.mediumGrey),
            suffixIcon: GestureDetector(
              onTap: () {
                context.read<PasswordBloc>().add(TogglePasswordVisibility());
              },
              child: state.isPasswordVisible
                  ? Image.asset('assets/icons/visible.png')
                  : const Icon(
                      Icons.visibility_off_outlined,
                      color: AppColors.primaryColor,
                    ),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: AppColors.mediumGrey,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: AppColors.mediumGrey,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2,
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      }),
    );
  }
}
