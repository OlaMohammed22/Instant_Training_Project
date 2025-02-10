import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/text_styles.dart';

class CaseDetailsTabAnimatedContainer extends StatelessWidget {
  const CaseDetailsTabAnimatedContainer({
    super.key,
    required this.selectedTabIndex,
    required this.text,
    required this.index,
  });

  final int selectedTabIndex;
  final int index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: selectedTabIndex == index
              ? Colors.transparent
              : const Color.fromARGB(255, 224, 224, 224),
        ),
        color:
            selectedTabIndex == index ? AppColors.primaryColor : Colors.white,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: Text(
        text,
        style: TextStyles.style16Regular.copyWith(
            color: selectedTabIndex == index
                ? Colors.white
                : AppColors.veryDarkGrey),
      ),
    );
  }
}
