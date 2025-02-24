import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Accept%20Doctor%20Call/accept_or_reject_doctor_call_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20Doctors%20Call%20Bloc/get_doctors_call_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_view_body.dart';

class DoctorCallView extends StatelessWidget {
  const DoctorCallView({super.key});

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
          "Calls",
          style: TextStyles.style16Regular,
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetDoctorsCallBloc(),
          ),
          BlocProvider(
            create: (context) => AcceptOrRejectDoctorCallBloc(),
          ),
        ],
        child: const DoctorCallViewBody(),
      ),
    );
  }
}
