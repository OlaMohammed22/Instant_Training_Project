import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/show_snack_bar.dart';
import '../../bloc/auth/auth_cubit.dart';
import '../../bloc/auth/auth_state.dart';
import 'custom_app_bar.dart';
import 'custom_auth_button.dart';
import 'custom_auth_text_field.dart';
import 'custom_date_drop_down.dart';
import 'custom_dropdown_button_form_field.dart';
import 'custom_password_text_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController mobileController = TextEditingController();
    String? gender;
    String? birthday;
    String? status;
    String? specialist;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is RegisterLoading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) =>
                    const Center(child: CircularProgressIndicator()),
              );
            } else if (state is RegisterSuccess) {
              Navigator.pop(context);
            } else if (state is RegisterFailure) {
              showSnackBar(context, state.erMessage);
            }
          },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomAppBar(
                  title: 'New User',
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomAuthTextField(
                  controller: firstNameController,
                  iconPath: 'assets/icons/person.png',
                  hintText: 'First name',
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomAuthTextField(
                  controller: lastNameController,
                  iconPath: 'assets/icons/person.png',
                  hintText: 'Last name',
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomDropdownButtonFormField(
                  iconPath: 'assets/icons/gender.png',
                  hintText: 'Gender',
                  items: ["Male", "Female"],
                  selected: gender,
                  onChanged: (value) {
                    gender = value;
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomDropdownButtonFormField(
                  iconPath: 'assets/icons/specialist.png',
                  hintText: 'Specialist',
                  items: [
                    "Doctor",
                    "Receptionist",
                    "Nurse",
                    "Analysis",
                    "Manger",
                    "HR",
                  ],
                  selected: specialist,
                  onChanged: (value) {
                    specialist = value;
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomDateDropDown(
                  iconPath: 'assets/icons/calendar.png',
                  hintText: 'Date of birth',
                  onDateSelected: (value) {
                    birthday = value;
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomDropdownButtonFormField(
                  iconPath: 'assets/icons/statues.png',
                  hintText: 'Statues',
                  items: [
                    "Single",
                    "Married",
                  ],
                  selected: status,
                  onChanged: (value) {
                    status = value;
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomAuthTextField(
                  iconPath: 'assets/icons/phone.png',
                  hintText: 'Phone Number',
                  controller: mobileController,
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomAuthTextField(
                  iconPath: 'assets/icons/email.png',
                  hintText: 'E-mail',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomAuthTextField(
                  iconPath: 'assets/icons/location.png',
                  hintText: 'Address',
                  controller: addressController,
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomPasswordTextField(
                  hintText: 'Password',
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 45,
                ),
                CustomAuthButton(
                  text: 'Create user',
                  onTap: () {
                    context.read<AuthCubit>().register(
                          email: emailController.text,
                          password: passwordController.text,
                          firstName: firstNameController.text,
                          lastName: lastNameController.text,
                          gender: gender ?? '',
                          birthday: birthday ?? '',
                          status: status ?? '',
                          address: addressController.text,
                          mobile: mobileController.text,
                          specialist: specialist ?? '',
                          type: specialist?.toLowerCase() ?? '',
                        );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
