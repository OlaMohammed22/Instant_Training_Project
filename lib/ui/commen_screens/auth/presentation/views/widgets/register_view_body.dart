import 'package:flutter/material.dart';

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomAppBar(
              title: 'New User',
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomAuthTextField(
              iconPath: 'assets/icons/person.png',
              hintText: 'First name',
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomAuthTextField(
              iconPath: 'assets/icons/person.png',
              hintText: 'Last name',
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomDropdownButtonFormField(
              iconPath: 'assets/icons/gender.png',
              hintText: 'Gender',
              items: ["Male", "Female"],
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomDropdownButtonFormField(
              iconPath: 'assets/icons/specialist.png',
              hintText: 'Specialist',
              items: [
                "Doctor",
                "Receptionist",
                "Nurse",
                "Analysis Employee",
                "Manger",
                "HR",
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomDateDropDown(
              iconPath: 'assets/icons/calendar.png',
              hintText: 'Date of birth',
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomDropdownButtonFormField(
              iconPath: 'assets/icons/statues.png',
              hintText: 'Statues',
              items: [
                "Single",
                "Married",
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomAuthTextField(
              iconPath: 'assets/icons/phone.png',
              hintText: 'Phone Number',
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomAuthTextField(
              iconPath: 'assets/icons/email.png',
              hintText: 'E-mail',
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomPasswordTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 45,
            ),
            CustomAuthButton(
              text: 'Create user',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
