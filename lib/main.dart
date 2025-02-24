import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20Doctor%20Call%20Details/get_doctor_call_details_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/Get%20All%20Calls/get_all_calls_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/cubit/select_doctor_cubit.dart';
import 'package:untitled36/ui/commen_screens/loading_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CaseBloc(),
        ),
        BlocProvider(
          create: (context) => SelectDoctorCubit(),
        ),
        BlocProvider(
          create: (context) => GetAllCallsBloc(),
        ),
        BlocProvider(
          create: (context) => GetDoctorCallDetailsBloc(),
        )
      ],
      child: ScreenUtilInit(
        designSize: Size(MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnboardingView(),
          );
        },
      ),
    );
  }
}
