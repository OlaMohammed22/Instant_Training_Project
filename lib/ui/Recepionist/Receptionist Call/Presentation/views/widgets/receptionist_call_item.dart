import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';

class ReceptionistCallItem extends StatelessWidget {
  const ReceptionistCallItem({
    super.key,
    required this.data,
  });
  final Datum data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: Color(0xffE5E5E5),
              ),
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
                      data.patientName.toString(),
                      style: TextStyles.style14Regular,
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      data.status == 'logout'
                          ? Assets.checkIcon
                          : Assets.pendingIcon,
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
                      data.createdAt != null
                          ? formatDate(data.createdAt!)
                          : "unknown date",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  String formatDate(String inputDate) {
    DateTime date = DateTime.parse(inputDate); // Parse the date
    String formattedDate = DateFormat('dd .MM .yyyy').format(date); // Format it
    return formattedDate;
  }
}
