import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20Doctor%20Call%20Details/get_doctor_call_details_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_details_row.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_details_status_row.dart';

class CaseTabContentInfo extends StatelessWidget {
  const CaseTabContentInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDoctorCallDetailsBloc, GetDoctorCallDetailsState>(
      builder: (context, state) {
        if (state is GetDoctorCallDetailsSuccess) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CaseDetailsRow(
                title: "Patient Name",
                data: state.data.patientName.toString(),
              ),
              const SizedBox(
                height: 16,
              ),
              CaseDetailsRow(
                title: "Age",
                data: "${state.data.age.toString()} years",
              ),
              const SizedBox(
                height: 16,
              ),
              CaseDetailsRow(
                title: "Phone Number",
                data: state.data.phone.toString(),
              ),
              const SizedBox(
                height: 16,
              ),
              CaseDetailsRow(
                title: "Date",
                data: formatDate(
                  state.data.createdAt.toString(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CaseDetailsRow(
                title: "Doctor",
                data: state.data.doctorId.toString(),
              ),
              const SizedBox(
                height: 16,
              ),
              CaseDetailsRow(
                title: "Nurse",
                data: state.data.nurseId.toString(),
              ),
              const SizedBox(
                height: 16,
              ),
              CaseDetailsStatusRow(
                title: "Status",
                data: state.data.status.toString(),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Case Description",
                style: TextStyles.style14SemiBold,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                state.data.description.toString(),
                style: TextStyles.style14Regular,
              ),
            ],
          );
        } else if (state is GetDoctorCallDetailsFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          );
        }
      },
    );
  }

  String formatDate(String inputDate) {
    DateTime date = DateTime.parse(inputDate); // Parse the date
    String formattedDate = DateFormat('dd .MM .yyyy').format(date); // Format it
    return formattedDate;
  }
}
