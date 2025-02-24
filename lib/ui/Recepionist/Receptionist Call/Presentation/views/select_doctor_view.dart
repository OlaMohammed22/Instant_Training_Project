import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/Get%20All%20Doctors%20Bloc/get_all_doctors_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/select_doctor_view_body.dart';

class SelectDoctorView extends StatefulWidget {
  const SelectDoctorView({super.key});

  @override
  State<SelectDoctorView> createState() => _SelectDoctorViewState();
}

class _SelectDoctorViewState extends State<SelectDoctorView> {
  @override
  void initState() {
    BlocProvider.of<GetAllDoctorsBloc>(context).add(GetAllDoctorsEvent());
    super.initState();
  }
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
          "Select Doctor",
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
      body: const SelectDoctorViewBody(),
    );
  }
}
