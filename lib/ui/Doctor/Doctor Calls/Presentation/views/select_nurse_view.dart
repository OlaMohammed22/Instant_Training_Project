import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20All%20Nurse%20Bloc/get_all_nurse_bloc.dart';
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
          },
          icon: const Icon(
            Icons.close,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => GetAllNurseBloc(),
        child: const SelectNurseViewBody(),
      ),
    );
  }
}
