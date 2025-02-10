import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/call_nurse_header_tabs.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/nurse_case_details_tabs_content.dart';

class NurseCaseDetails extends StatefulWidget {
  const NurseCaseDetails({super.key});

  @override
  State<NurseCaseDetails> createState() => _NurseCaseDetailsState();
}

class _NurseCaseDetailsState extends State<NurseCaseDetails>
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
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        surfaceTintColor: AppColors.white,
        title: Text(
          "Case Details",
          style: TextStyles.style16Regular,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            CallNurseHeaderTabs(
              selectedTabIndex: selectedTabIndex,
              tabController: _tabController,
            ),
            Expanded(
              child: NurseCaseDetailsTabsContent(
                tabController: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}