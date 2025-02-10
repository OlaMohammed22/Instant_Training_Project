import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'call_action_button.dart';

class DoctorCallActionsButtons extends StatelessWidget {
  const DoctorCallActionsButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CallActionButton(
          backgroundColor: const Color(0xff1AD672),
          text: "Accept",
          onPressed: () {},
          icon: Icons.check_circle_outline_rounded,
        ),
        const SizedBox(
          width: 20,
        ),
        CallActionButton(
          backgroundColor: const Color(0xffEC9511),
          text: "Busy",
          onPressed: () {},
          icon: FontAwesomeIcons.circleXmark,
        ),
      ],
    );
  }
}
