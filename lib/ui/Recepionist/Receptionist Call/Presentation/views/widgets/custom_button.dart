import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.padding,
    this.width,
  });
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: width,
        height: 48,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
          ),
          onPressed: onPressed,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: TextStyles.style16Regular.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
