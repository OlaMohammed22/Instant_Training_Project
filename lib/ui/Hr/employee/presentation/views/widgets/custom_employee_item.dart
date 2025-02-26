import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/text_styles.dart';

class CustomEmployeeItem extends StatelessWidget {
  const CustomEmployeeItem({
    super.key,
    required this.employeeImage,
    required this.specialist,
    required this.name,
    required this.onTap,
  });

  final String employeeImage;
  final String specialist;
  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        bottom: 20,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              height: 54,
              width: 62,
              child: Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.network(
                  employeeImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyles.style14Regular,
                ),
                Text(
                  'Specialist - $specialist',
                  style: TextStyles.style12Regular.copyWith(
                    color: AppColors.mediumGrey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
