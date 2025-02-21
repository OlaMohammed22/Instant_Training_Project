import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';

import '../../../../../../core/utils/text_styles.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, required this.text, required this.onTap});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.style14Regular.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
