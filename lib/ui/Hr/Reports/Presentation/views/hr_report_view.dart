// yes
import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Hr/Reports/Presentation/views/widgets/hr_report_view_body.dart';


class HrReportView extends StatelessWidget {
  const HrReportView({super.key});

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
          "Reports",
          style: TextStyles.style16Regular,
        ),
      ),
      body: const HrReportViewBody(),
    );
  }
}
