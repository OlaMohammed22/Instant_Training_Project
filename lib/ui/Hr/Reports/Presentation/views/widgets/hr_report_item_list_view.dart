import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled36/ui/Recepionist/Reports/Presentation/views/widgets/report_Item.dart';
import 'package:untitled36/ui/Recepionist/Reports/Presentation/views/widgets/report_details.dart';
class HrReportItemListView extends StatelessWidget {
  const HrReportItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ReportDetailsScreen();
                  },
                ),
              );
            },
            child: ReportItem(
              isPending: Random().nextBool(),
            ),
          );
        },
      ),
    );
  }
}
