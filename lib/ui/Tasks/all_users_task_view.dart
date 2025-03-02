// yes
import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/receptionist_call_view_body.dart';


class AllUsersTaskView extends StatelessWidget {
  const AllUsersTaskView({super.key});

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
      body: const ReceptionistTaskViewBody(),
    );
  }
}
