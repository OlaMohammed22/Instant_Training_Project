import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/ui/Recepionist/Reports/Presentation/views/widgets/create_report_view.dart';
import 'package:untitled36/ui/Recepionist/Reports/Presentation/views/widgets/receptionist_report_item_list_view.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/calender_bar.dart';

class DoctorReportViewBody extends StatelessWidget {
  const DoctorReportViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: CalenderBar()),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CreateReportScreen();
                      },
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  Assets.createCallIcon,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          DoctorReportItemListView(),
        ],
      ),
    );
  }
}
