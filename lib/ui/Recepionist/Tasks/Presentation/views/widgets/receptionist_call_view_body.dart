// yes

import 'package:flutter/material.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/calender_bar.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/receptionist_call_item_list_view.dart';

class ReceptionistTaskViewBody extends StatelessWidget {
  const ReceptionistTaskViewBody({super.key});

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
          ReceptionistCallItemListView(),
        ],
      ),
    );
  }
}
