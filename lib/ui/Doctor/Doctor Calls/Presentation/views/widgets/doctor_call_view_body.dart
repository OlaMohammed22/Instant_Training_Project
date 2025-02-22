import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_list_view.dart';

class DoctorCallViewBody extends StatelessWidget {
  const DoctorCallViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          DoctorCallListView(),
        ],
      ),
    );
  }
}
