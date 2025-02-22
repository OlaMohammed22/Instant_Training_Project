import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
class MedicalPatientInfo extends StatelessWidget {
  const MedicalPatientInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Aml Ezzat",
                    style: TextStyles.style14Medium.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    "Specialist - Analysis employee",
                    style: TextStyles.style14Regular
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "13 Mar 2020",
            style: TextStyles.style12Regular
                .copyWith(color: const Color(0xff787878)),
          ),
        ],
      ),
    );
  }
}
