import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_actions_buttons.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';

class DoctorCallCard extends StatelessWidget {
  const DoctorCallCard({
    super.key,
    required this.displayCallInfoModel,
  });
  final Datum displayCallInfoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 60,
            color: Color(0xffE5E5E5),
          )
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.personIcon),
                const SizedBox(
                  width: 11,
                ),
                Text(
                  displayCallInfoModel.patientName.toString(),
                  style: TextStyles.style14Regular,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset(Assets.calenderIcon),
                const SizedBox(
                  width: 11,
                ),
                Text(
                  formatDate(
                    displayCallInfoModel.createdAt.toString(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            DoctorCallActionsButtons(
              callID: displayCallInfoModel.id.toString(),
            ),
          ],
        ),
      ),
    );
  }

  String formatDate(String inputDate) {
    DateTime date = DateTime.parse(inputDate); // Parse the date
    String formattedDate = DateFormat('dd .MM .yyyy').format(date); // Format it
    return formattedDate;
  }
}
