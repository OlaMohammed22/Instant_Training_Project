import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_measurement_patient_info.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/nurse_call_add_measurement.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';

class MedicalMeasurementTanContent extends StatelessWidget {
  const MedicalMeasurementTanContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 12,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Color(0xffBEBEBE),
                  ),
                ),
              ),
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            CustomButton(
                              text: "Blood pressure",
                              padding: const EdgeInsets.only(right: 8),
                              onPressed: () {},
                            ),
                            CustomButton(
                              text: "Sugar analysis",
                              padding: const EdgeInsets.only(left: 8),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          NurseCallAddMeasurement(),
        ],
      ),
    );
  }
}
