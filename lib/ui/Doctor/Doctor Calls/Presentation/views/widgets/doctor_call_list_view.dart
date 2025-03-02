import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/case_details_view.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_card.dart';

class DoctorCallListView extends StatelessWidget {
  const DoctorCallListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 20,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return CaseDetailsView();
                      },
                    ),
                  );
                  //GoRouter.of(context).push(AppRoutes.caseDetailsView);
                },
                child: const DoctorCallCard());
          },
        ),
      ),
    );
  }
}
