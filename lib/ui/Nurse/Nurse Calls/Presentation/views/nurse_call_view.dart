import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/nurse_call_view_body.dart';

class NurseCallView extends StatelessWidget {
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
          "Call",
          style: TextStyles.style16Regular,
        ),
      ),
      body: NurseCallViewBody(),
    );
  }
}