import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_call_item.dart';

class ReceptionistCallItemListView extends StatelessWidget {
  const ReceptionistCallItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return ReceptionistCallItem(
            isPending: Random().nextBool(),
          );
        },
      ),
    );
  }
}
