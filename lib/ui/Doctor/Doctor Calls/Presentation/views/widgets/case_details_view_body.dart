import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_details_header_tabs.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_details_tabs_content.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';

class CaseDetailsViewBody extends StatefulWidget {
  const CaseDetailsViewBody({super.key});

  @override
  State<CaseDetailsViewBody> createState() => _CaseDetailsViewBodyState();
}

class _CaseDetailsViewBodyState extends State<CaseDetailsViewBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  ValueNotifier<int> selectedTabIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        CaseDetailsHeaderTabs(
          selectedTabIndex: selectedTabIndex,
          tabController: _tabController,
        ),
        Expanded(
          child: CaseDetailsTabsContent(
            tabController: _tabController,
          ),
        ),
        CustomButton(
          text: "End Case",
          width: MediaQuery.sizeOf(context).width,
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
            //GoRouter.of(context).pop();
          },
          backgroundColor: const Color(0xffE63A3A),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
