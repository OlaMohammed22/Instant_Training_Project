// yes

import 'package:flutter/material.dart';
import 'package:untitled36/ui/Hr/Tasks/Presentation/views/widgets/hr_call_item_list_view.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/calender_bar.dart';

class HrTaskViewBody extends StatelessWidget {
  const HrTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.sizeOf(context).width, child: CalenderBar()),
          SizedBox(
            height: 30,
          ),
          HrCallItemListView(),
        ],
      ),
    );
  }
}
