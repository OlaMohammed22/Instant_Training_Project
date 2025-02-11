// yes

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/ui/Manager/Tasks/Presentation/views/add_new_task.dart';
import 'package:untitled36/ui/Manager/Tasks/Presentation/views/widgets/calender_bar.dart';
import 'package:untitled36/ui/Manager/Tasks/Presentation/views/widgets/manager_call_item_list_view.dart';

class ManagerCallViewBody extends StatelessWidget {
  const ManagerCallViewBody({super.key});

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
                        return TaskDetailsScreen();
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
          ManagerCallItemListView(),
        ],
      ),
    );
  }
}
