import 'package:flutter/material.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/medical_measurement_tan_content.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/nurse_case_tab_content.dart';

class NurseCaseDetailsTabsContent extends StatelessWidget {
  const NurseCaseDetailsTabsContent({
    super.key,
    required TabController tabController, required this.callID,
  }) : _tabController = tabController;

  final TabController _tabController;
  final String callID;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      clipBehavior: Clip.none,
      physics: const NeverScrollableScrollPhysics(),
      children:  [
        NurseCaseTabContent(callID: callID,),
        MedicalMeasurementTanContent(),
        SizedBox(),
      ],
    );
  }
}
