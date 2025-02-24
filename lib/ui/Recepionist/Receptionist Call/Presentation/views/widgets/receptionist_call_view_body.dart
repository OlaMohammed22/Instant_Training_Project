import 'package:flutter/material.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_call_header.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_call_item_list_view.dart';

class ReceptionistCallViewBody extends StatefulWidget {
  const ReceptionistCallViewBody({super.key});

  @override
  State<ReceptionistCallViewBody> createState() =>
      _ReceptionistCallViewBodyState();
}

class _ReceptionistCallViewBodyState extends State<ReceptionistCallViewBody> {
  late TextEditingController calenderTextEditingController;
  @override
  void initState() {
    calenderTextEditingController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    calenderTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReceptionistCallHeader(
            calenderTextEditingController: calenderTextEditingController),
        SizedBox(
          height: 30,
        ),
        ReceptionistCallItemListView(),
      ],
    );
  }
}
