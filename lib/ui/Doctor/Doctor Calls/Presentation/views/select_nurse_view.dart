import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/select_nurse_view_body.dart';

class SelectNurseView extends StatelessWidget {
  const SelectNurseView({super.key});

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
          "Select Nurse",
          style: TextStyles.style16Regular,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            //GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
          ),
        ),
      ),
      body: const SelectNurseViewBody(),
    );
  }
}
