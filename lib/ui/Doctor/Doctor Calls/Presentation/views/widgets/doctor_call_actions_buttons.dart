import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Accept%20Doctor%20Call/accept_or_reject_doctor_call_bloc.dart';

import 'call_action_button.dart';

class DoctorCallActionsButtons extends StatelessWidget {
  const DoctorCallActionsButtons({
    super.key,
    required this.callID,
  });
  final String callID;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CallActionButton(
          backgroundColor: const Color(0xff1AD672),
          text: "Accept",
          onPressed: () {
            BlocProvider.of<AcceptOrRejectDoctorCallBloc>(context).add(
              AcceptCallEvent(callID),
            );
          },
          icon: Icons.check_circle_outline_rounded,
        ),
        const SizedBox(
          width: 20,
        ),
        CallActionButton(
          backgroundColor: const Color(0xffEC9511),
          text: "Busy",
          onPressed: () {
            BlocProvider.of<AcceptOrRejectDoctorCallBloc>(context).add(
              RejectCallEvent(callID),
            );
          },
          icon: FontAwesomeIcons.circleXmark,
        ),
      ],
    );
  }
}
