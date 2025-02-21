import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_details_tab_animated_container.dart';

class CaseTab extends StatelessWidget {
  const CaseTab({
    super.key,
    required this.selectedTabIndex,
  });

  final int selectedTabIndex;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: CaseDetailsTabAnimatedContainer(
        selectedTabIndex: selectedTabIndex,
        text: "Case",
        index: 0,
      ),
    );
  }
}