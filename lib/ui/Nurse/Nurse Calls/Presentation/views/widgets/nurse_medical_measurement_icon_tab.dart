import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/assets.dart';

class NurseMedicalMeasurementIconTab extends StatelessWidget {
  const NurseMedicalMeasurementIconTab({
    super.key,
    required this.selectedTabIndex,
  });

  final ValueNotifier<int> selectedTabIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.25,
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          selectedTabIndex.value = 2;
        },
        child: Container(
          decoration: BoxDecoration(
            color: selectedTabIndex.value == 2 ? AppColors.primaryColor : null,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.verylightGrey),
          ),
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            Assets.medicalMeasurementIcon,
            height: 22,
            colorFilter: ColorFilter.mode(
              selectedTabIndex.value == 2
                  ? AppColors.white
                  : AppColors.veryDarkGrey,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}

