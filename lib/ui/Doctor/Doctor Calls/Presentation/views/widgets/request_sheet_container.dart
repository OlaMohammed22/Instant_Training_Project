import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';
class RequestSheetContainer extends StatelessWidget {
  const RequestSheetContainer({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
  });
  final String text, icon;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
              color:
                  isSelected ? AppColors.primaryColor : const Color(0xffB5B5B5),
              width: 2)),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: SvgPicture.asset(
                icon,
                height: 33,
                colorFilter: ColorFilter.mode(
                  isSelected ? AppColors.primaryColor : const Color(0xffB5B5B5),
                  BlendMode.srcIn,
                ),
                width: 30,
              ),
            ),
            FittedBox(
              child: Text(
                text,
                style: TextStyles.style14Regular.copyWith(
                  color: isSelected
                      ? AppColors.primaryColor
                      : const Color(0xffB5B5B5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}