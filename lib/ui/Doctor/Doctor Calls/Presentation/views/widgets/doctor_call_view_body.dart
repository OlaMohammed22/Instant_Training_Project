import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Accept%20Doctor%20Call/accept_or_reject_doctor_call_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20Doctors%20Call%20Bloc/get_doctors_call_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_list_view.dart';

class DoctorCallViewBody extends StatefulWidget {
  const DoctorCallViewBody({
    super.key,
  });

  @override
  State<DoctorCallViewBody> createState() => _DoctorCallViewBodyState();
}

class _DoctorCallViewBodyState extends State<DoctorCallViewBody> {
  @override
  void initState() {
    BlocProvider.of<GetDoctorsCallBloc>(context).add(GetDoctorsCallEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<AcceptOrRejectDoctorCallBloc,
          AcceptOrRejectDoctorCallState>(
        listener: (context, state) {
          if (state is AcceptOrRejectDoctorCallSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: const Color.fromARGB(255, 32, 117, 34),
                content: Text(state.message),
              ),
            );
          } else if (state is AcceptOrRejectDoctorCallFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: const Color.fromARGB(255, 118, 28, 21),
                content: Text(
                  state.errMessage,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                height: 24,
              ),
              DoctorCallListView(),
            ],
          );
        },
      ),
    );
  }
}
