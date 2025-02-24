import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/Get%20All%20Calls/get_all_calls_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_call_view_body.dart';

class ReceptionistCallView extends StatefulWidget {
  const ReceptionistCallView({super.key});

  @override
  State<ReceptionistCallView> createState() => _ReceptionistCallViewState();
}

class _ReceptionistCallViewState extends State<ReceptionistCallView> {
  @override
  void initState() {
    BlocProvider.of<GetAllCallsBloc>(context).filterByDate = '';
    BlocProvider.of<GetAllCallsBloc>(context).add(
      GetAllCallsEvent(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
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
      body: const ReceptionistCallViewBody(),
    );
  }
}
