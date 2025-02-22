import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_actions_buttons.dart';
class DoctorCallCard extends StatelessWidget {
  const DoctorCallCard({
    super.key,
  });

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
                 const Text(
                  "Ebrahem Khaled",
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
                const Text("24 . 04 . 2021"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const DoctorCallActionsButtons()
          ],
        ),
      ),
    );
  }
}