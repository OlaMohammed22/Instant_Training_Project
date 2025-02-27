import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Hr/employee/presentation/cubit/users_by_type_cubit.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../Hr/employee/presentation/cubit/users_by_type_state.dart';
import '../../../../../Hr/employee/presentation/views/widgets/custom_employee_item.dart';

class EmployeeListTileItemsList extends StatefulWidget {
  const EmployeeListTileItemsList({super.key});

  @override
  State<EmployeeListTileItemsList> createState() =>
      _EmployeeListTileItemsListState();
}

class _EmployeeListTileItemsListState extends State<EmployeeListTileItemsList> {
  String? selectedUser;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersByTypeCubit, UsersByTypeState>(
      builder: (context, state) {
        if (state is UsersByTypeLoaded) {
          final users = state.users.data ?? [];

          return Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                var user = users[index];
                var userName = user.firstName ?? '';

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: RadioListTile<String>(
                    contentPadding: EdgeInsets.zero,
                    activeColor: AppColors.primaryColor,
                    title: CustomEmployeeItem(
                      specialist: user.type ?? '',
                      name: userName,
                    ),
                    value: userName,
                    groupValue: selectedUser,
                    onChanged: (value) {
                      setState(() {
                        selectedUser = value;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                );
              },
            ),
          );
        } else if (state is UsersByTypeFailure) {
          return Center(child: Text(state.erMessage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
