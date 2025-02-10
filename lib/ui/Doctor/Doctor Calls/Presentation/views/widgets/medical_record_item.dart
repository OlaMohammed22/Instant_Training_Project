import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
class MedicalRecordItem extends StatelessWidget {
  const MedicalRecordItem({
    super.key,
    required this.title,
  });
  final String title;
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
        ],
      ),
    );
  }
}