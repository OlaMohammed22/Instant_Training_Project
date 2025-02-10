import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/assets.dart';
class MedicalRecordAnalysis extends StatelessWidget {
  const MedicalRecordAnalysis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InstaImageViewer(
          child: Image.asset(
            Assets.medicalRecordFile,
            height: 200,
            width: 230,
            fit: BoxFit.fitWidth,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.download,
            size: 32,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
