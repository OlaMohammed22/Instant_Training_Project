import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_tab_content.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_measurement_tab_content.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_record_tab_content.dart';

class CaseDetailsTabsContent extends StatelessWidget {
  const CaseDetailsTabsContent({
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
        CaseTabContent(),
        MedicalMeasurementTabContent(),
        MedicalRecordTabContent(),
      ],
    );
  }
}
