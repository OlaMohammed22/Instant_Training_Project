import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';

import '../../../../../../core/utils/text_styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.hintText});

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(CupertinoIcons.search),
        hintText: 'Search for $hintText',
        hintStyle:
            TextStyles.style14Regular.copyWith(color: AppColors.mediumGrey),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          borderSide: BorderSide(
            color: AppColors.mediumGrey,
            width: 1,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          borderSide: BorderSide(
            color: AppColors.mediumGrey,
            width: 1,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
