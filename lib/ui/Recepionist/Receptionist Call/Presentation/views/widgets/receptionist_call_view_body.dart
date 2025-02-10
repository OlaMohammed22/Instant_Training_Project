import 'package:flutter/material.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_call_header.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_call_item_list_view.dart';

class ReceptionistCallViewBody extends StatelessWidget {
  const ReceptionistCallViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ReceptionistCallHeader(),
          SizedBox(
            height: 30,
          ),
          ReceptionistCallItemListView(),
        ],
      ),
    );
  }
}
