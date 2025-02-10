import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled36/core/utils/app_colors.dart';

abstract class TextStyles {
  static final style16Regular = TextStyle(
    fontSize: 16.h,
    color: AppColors.mediumGrey,
    fontWeight: FontWeight.w400,
  );
  static const style16Medium = TextStyle(
    fontSize: 16,
    color: AppColors.mediumGrey,
    fontWeight: FontWeight.w500,
  );
  static const style14Regular = TextStyle(
    fontSize: 14,
    color: AppColors.veryDarkGrey,
    fontWeight: FontWeight.w400,
  );

  static const style14SemiBold = TextStyle(
    fontSize: 14,
    color: Color(0xff989898),
    fontWeight: FontWeight.w600,
  );

  static const style16SemiBold = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  static const style10Regular = TextStyle(
    fontSize: 10,
    color: AppColors.veryDarkGrey,
    fontWeight: FontWeight.w400,
  );
  static const style12Regular = TextStyle(
    fontSize: 12,
    color: AppColors.veryDarkGrey,
    fontWeight: FontWeight.w400,
  );
  static const style12Medium = TextStyle(
    fontSize: 12,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static const style14Medium = TextStyle(
    fontSize: 14,
    color: Color(0xff777777),
    fontWeight: FontWeight.w500,
  );
}
