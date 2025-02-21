import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_measurement_case_info.dart';

class MedicalMeasurementTabContent extends StatelessWidget {
  const MedicalMeasurementTabContent({super.key});

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
              child: const MedicalMeasurmentCaseInfo(),
            ),
          ),
        ],
      ),
    );
  }
}