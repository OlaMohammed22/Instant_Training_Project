// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';

class TaskItem extends StatelessWidget {
   TaskItem({
    Key? key,
    required this.isPending,
    required this.status,
    required this.created_at,
    required this.task_name,
    required this.id,


  }) : super(key: key);
  final bool isPending;
  final int id;
  final String task_name;
  final String created_at;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: Color(0xffE5E5E5),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.primaryColor,
                      ),
                      padding: EdgeInsets.all(2),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Icon(
                          Icons.check_box_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                     Text(
                      task_name.length > 25?task_name.substring(0, 25) +'...':task_name,


                      style: TextStyles.style14Regular,
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: status=='pending'
                            ? const Color.fromARGB(255, 197, 245, 198)
                            : const Color.fromARGB(255, 247, 232, 211),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.all(4),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: (status=='pending') ? Colors.green : Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset(Assets.calenderIcon),
                    const SizedBox(
                      width: 11,
                    ),
                     Text(created_at),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
