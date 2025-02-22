import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/receptionist_create_call_view.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/calender_bar.dart';

class ReceptionistCallHeader extends StatelessWidget {
  const ReceptionistCallHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CalenderBar(),
        ),
        const SizedBox(
          width: 16,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ReceptionistCreateCallView();
                },
              ),
            );
            // GoRouter.of(context).push(
            //   AppRoutes.receptionistCreateCallView,
            // );
          },
          child: SvgPicture.asset(
            Assets.createCallIcon,
          ),
        )
      ],
    );
  }
}
