// yes
import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Manager/Tasks/Presentation/views/widgets/manager_call_view_body.dart';


class ManagerTaskView extends StatelessWidget {
  const ManagerTaskView({super.key});

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
          "Tasks",
          style: TextStyles.style16Regular,
        ),
      ),
      body: const ManagerCallViewBody(),
    );
  }
}
