import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';

import '../../../../../../core/utils/app_colors.dart';

class CustomDropdownButtonFormField extends StatelessWidget {
  const CustomDropdownButtonFormField(
      {super.key,
      required this.iconPath,
      required this.hintText,
      required this.items});

  final String iconPath;
  final String hintText;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    String? selectedGender;
    return DropdownButtonFormField<String>(
      iconSize: 24,
      icon: const Icon(
        Icons.arrow_drop_down_outlined,
        color: AppColors.mediumGrey,
      ),
      value: selectedGender,
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(
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
      items: items.map((String gender) {
        return DropdownMenuItem<String>(
          value: gender,
          child: Text(gender),
        );
      }).toList(),
      onChanged: (value) {
        selectedGender = value;
      },
    );
  }
}
