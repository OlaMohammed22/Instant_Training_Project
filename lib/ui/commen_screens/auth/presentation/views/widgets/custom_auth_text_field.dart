import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';

import '../../../../../../core/utils/app_colors.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({
    super.key,
    this.iconPath,
    required this.hintText,
    this.isDate = false,
    this.controller,
  });

  final bool isDate;
  final String? iconPath;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field Is Required';
        }
        return null;
      },
      cursorColor: AppColors.primaryColor,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isDate == true
                  ? const Icon(
                      Icons.date_range_outlined,
                      color: AppColors.primaryColor,
                    )
                  : Image.asset(
                      iconPath!,
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
        suffixIcon: isDate == true
            ? const Icon(
                Icons.arrow_drop_down_outlined,
                color: AppColors.mediumGrey,
              )
            : null,
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
    );
  }
}
