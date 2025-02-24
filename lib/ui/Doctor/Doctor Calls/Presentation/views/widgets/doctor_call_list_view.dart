import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20Doctor%20Call%20Details/get_doctor_call_details_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20Doctors%20Call%20Bloc/get_doctors_call_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/case_details_view.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_card.dart';

class DoctorCallListView extends StatelessWidget {
  const DoctorCallListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetDoctorsCallBloc, GetDoctorsCallState>(
        builder: (context, state) {
          if (state is GetDoctorsCallFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else if (state is GetDoctorsCallSuccess) {
            if (state.data.length == 0) {
              return Center(
                child: Text("No Calls"),
              );
            } else {
              return ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      BlocProvider.of<GetDoctorCallDetailsBloc>(context).add(
                        FetchDoctorCallDetails(
                          callID: state.data[index].id.toString(),
                        ),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return CaseDetailsView();
                          },
                        ),
                      );
                      //GoRouter.of(context).push(AppRoutes.caseDetailsView);
                    },
                    child: DoctorCallCard(
                      displayCallInfoModel: state.data[index],
                    ),
                  );
                },
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          }
        },
      ),
    );
  }
}
