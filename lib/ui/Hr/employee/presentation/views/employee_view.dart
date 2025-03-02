import 'package:flutter/material.dart';
import 'package:untitled36/ui/Hr/employee/presentation/views/widgets/employee_view_body.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../commen_screens/auth/presentation/views/register_view.dart';

class EmployeeView extends StatelessWidget {
  const EmployeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const RegisterView();
              },
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: const EmployeeViewBody(),
    );
  }
}
