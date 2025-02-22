import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_tab.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_measurement_tab.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_record_tab.dart';

class CaseDetailsHeaderTabs extends StatelessWidget {
  const CaseDetailsHeaderTabs({
    super.key,
    required this.selectedTabIndex,
    required TabController tabController,
  }) : _tabController = tabController;

  final ValueNotifier<int> selectedTabIndex;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedTabIndex,
      builder: (context, value, child) {
        return FittedBox(
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 2),
            child: IntrinsicHeight(
              child: TabBar(
                controller: _tabController,
                overlayColor: const WidgetStatePropertyAll(
                  Colors.transparent,
                ),
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                tabAlignment: TabAlignment.center,
                labelPadding: const EdgeInsets.only(left: 14),
                onTap: (value) {
                  selectedTabIndex.value = value;
                },
                tabs: [
                  CaseTab(selectedTabIndex: selectedTabIndex.value),
                  MedicalRecordTab(selectedTabIndex: selectedTabIndex.value),
                  MedicalMeasurementTab(
                      selectedTabIndex: selectedTabIndex.value),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
