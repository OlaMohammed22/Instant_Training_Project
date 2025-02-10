import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_measurement_patient_info.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_record_analysis.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_record_item.dart';

class MedicalRecordTabContent extends StatelessWidget {
  const MedicalRecordTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, top: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Color(0xffBEBEBE),
                  ),
                ),
              ),
              padding: const EdgeInsets.only(left: 12),
              child: SingleChildScrollView(
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
                      "Medical Record",
                      style: TextStyles.style16SemiBold,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const MedicalRecordItem(
                      title: "Blood pressure",
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const MedicalRecordItem(
                      title: "Sugar analysis",
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const MedicalRecordAnalysis(),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
