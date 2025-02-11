// yes
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled36/ui/Manager/Tasks/Presentation/views/widgets/task_details.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/task_Item.dart';

class ManagerCallItemListView extends StatelessWidget {
  const ManagerCallItemListView({super.key});

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
                    return TaskDetailsScreen();
                  },
                ),
              );
            },
            child: TaskItem(
              isPending: Random().nextBool(),
            ),
          );
        },
      ),
    );
  }
}
