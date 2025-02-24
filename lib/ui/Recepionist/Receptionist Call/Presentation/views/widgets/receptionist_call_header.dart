import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/receptionist_create_call_view.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/calender_bar.dart';

class ReceptionistCallHeader extends StatelessWidget {
  const ReceptionistCallHeader({
    super.key,
    required this.calenderTextEditingController,
  });
  final TextEditingController calenderTextEditingController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CalenderBar(
              calenderTextEditingController: calenderTextEditingController,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          InkWell(
            onTap: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ReceptionistCreateCallView();
                  },
                ),
              );
            },
            child: SvgPicture.asset(
              Assets.createCallIcon,
            ),
          )
        ],
      ),
    );
  }
}
