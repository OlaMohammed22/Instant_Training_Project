import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_measurement_patient_info.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_measurment_item.dart';

class MedicalMeasurmentCaseInfo extends StatelessWidget {
  const MedicalMeasurmentCaseInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const MedicalPatientInfo(),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Details note : Lorem Ipsum is simply dummy text of printing and typesetting industry.Lorem Ipsum",
            style: TextStyles.style14Regular.copyWith(
              color: AppColors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Medical measurement",
            style: TextStyles.style16SemiBold,
          ),
          const SizedBox(
            height: 14,
          ),
          const MedicalMeasurementItem(
            title: "Blood pressure",
            value: "120- 129",
          ),
          const SizedBox(
            height: 12,
          ),
          const MedicalMeasurementItem(
            title: "Sugar analysis",
            value: "120- 129",
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
