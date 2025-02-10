import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/select_nurse_view.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/call_action_button.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/request_sheet.dart';

class CaseTabContentActionButtons extends StatelessWidget {
  const CaseTabContentActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CallActionButton(
          text: "Add Nurse",
          size: const Size(126, 40),
          backgroundColor: AppColors.primaryColor,
          icon: Icons.add,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return SelectNurseView();
                },
              ),
            );
           // GoRouter.of(context).push(AppRoutes.selectNurseView);
          },
        ),
        const SizedBox(
          width: 20,
        ),
        CallActionButton(
          text: "Request",
          size: const Size(126, 40),
          backgroundColor: AppColors.primaryColor,
          icon: Icons.add,
          onPressed: () {
            
            showRequestSheet(context);
          },
        ),
      ],
    );
  }

  void showRequestSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return const RequestSheet();
      },
    );
  }
}
