import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_create_call_view_body.dart';

class ReceptionistCreateCallView extends StatelessWidget {
  const ReceptionistCreateCallView({super.key});

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
          "Create Call",
          style: TextStyles.style16Regular,
        ),
      ),
      body: const ReceptionistCreateCallViewBody(),
    );
  }
}
