import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_tab.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/medical_measurement_tab.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/nurse_medical_measurement_icon_tab.dart';

class CallNurseHeaderTabs extends StatelessWidget {
  const CallNurseHeaderTabs({
    super.key,
    required this.selectedTabIndex,
    required this.tabController,
  });

  final ValueNotifier<int> selectedTabIndex;
  final TabController tabController;

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
                controller: tabController,
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
                isScrollable: false,
                tabs: [
                  CaseTab(selectedTabIndex: selectedTabIndex.value),
                  MedicalMeasurementTab(
                    selectedTabIndex: selectedTabIndex.value,
                    itsIndex: 1,
                  ),
                  NurseMedicalMeasurementIconTab(
                    selectedTabIndex: selectedTabIndex,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}