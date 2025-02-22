import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';

class MedicalMeasurementItem extends StatelessWidget {
  const MedicalMeasurementItem({
    super.key,
    required this.title,
    required this.value,
  });
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 8,
            backgroundColor: AppColors.primaryColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyles.style14Medium.copyWith(
              color: AppColors.black,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyles.style14Medium.copyWith(
              color: AppColors.black,
            ),
          )
        ],
      ),
    );
  }
}