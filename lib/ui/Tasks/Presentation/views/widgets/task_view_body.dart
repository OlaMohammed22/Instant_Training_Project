// yes

import 'package:flutter/material.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/calender_bar.dart';
import 'package:untitled36/ui/Tasks/Presentation/views/all_task_View.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({super.key});

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
          AllTasksListView(),
        ],
      ),
    );
  }
}
