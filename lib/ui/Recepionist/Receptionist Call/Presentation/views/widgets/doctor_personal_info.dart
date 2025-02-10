import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class DoctorPersonalInfo extends StatelessWidget {
  const DoctorPersonalInfo({
    super.key,
    required this.doctorInfoModel,
  });

  final DoctorInfoModel doctorInfoModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          doctorInfoModel.name,
          style: TextStyles.style16Medium,
        ),
        Text(
          doctorInfoModel.hisTitle,
          style: TextStyles.style14Medium,
        ),
      ],
    );
  }
}
