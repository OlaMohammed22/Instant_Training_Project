import 'package:flutter/material.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/medical_measurement_tan_content.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/nurse_case_tab_content.dart';

class NurseCaseDetailsTabsContent extends StatelessWidget {
  const NurseCaseDetailsTabsContent({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      clipBehavior: Clip.none,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        NurseCaseTabContent(),
        MedicalMeasurementTanContent(),
        SizedBox(),
      ],
    );
  }
}
