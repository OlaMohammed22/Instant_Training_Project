import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/blood_pressure_row.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/suger_analysis_row.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_text_form_field.dart';

class NurseCallAddMeasurement extends StatelessWidget {
  const NurseCallAddMeasurement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Add Measurement",
              style: TextStyles.style16Medium.copyWith(color: AppColors.black),
            ),
            const SizedBox(
              height: 14,
            ),
            const BloodPressureRow(),
            const SizedBox(
              height: 16,
            ),
            const SugerAnalysisRow(),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hint: "Add Note",
              maxLines: 5,
              fillColor: const Color(0xffEFEFEF),
              padding: EdgeInsets.zero,
              onSaved: (value) {},
              validator: (value) {
                return null;
              },
            ),
            Expanded(
              child: const SizedBox(
                height: 16,
              ),
            ),
            CustomButton(
              text: "Add measurement",
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
