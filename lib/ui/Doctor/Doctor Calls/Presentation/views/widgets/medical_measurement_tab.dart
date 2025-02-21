import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_details_tab_animated_container.dart';

class MedicalMeasurementTab extends StatelessWidget {
  const MedicalMeasurementTab({
    super.key,
    required this.selectedTabIndex,
    this.itsIndex,
  });

  final int selectedTabIndex;
  final int? itsIndex;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: CaseDetailsTabAnimatedContainer(
        selectedTabIndex: selectedTabIndex,
        index: itsIndex ?? 2,
        text: "Medical Measurement",
      ),
    );
  }
}
