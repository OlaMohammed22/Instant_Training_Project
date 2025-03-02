import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';

import '../../../../../../core/utils/text_styles.dart';

class CustomFilterTabs extends StatelessWidget {
  final List<String> tabList;
  final String selectedTab;
  final Function(String) onTabSelected;

  const CustomFilterTabs({
    super.key,
    required this.tabList,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabList.length,
          itemBuilder: (context, index) {
            bool isSelected = tabList[index] == selectedTab;
            return GestureDetector(
              onTap: () => onTabSelected(tabList[index]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primaryColor : Colors.white,
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primaryColor
                          : AppColors.mediumGrey,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    child: Center(
                      child: Text(
                        tabList[index],
                        style: TextStyles.style12Regular.copyWith(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
