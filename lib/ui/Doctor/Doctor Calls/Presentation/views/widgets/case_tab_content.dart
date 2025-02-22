import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_tab_content_action_button.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_tab_content_info.dart';
class CaseTabContent extends StatelessWidget {
  const CaseTabContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CaseTabContentInfo(),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CaseTabContentActionButtons(),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
