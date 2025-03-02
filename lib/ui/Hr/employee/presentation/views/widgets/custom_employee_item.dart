import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Hr/employee/presentation/cubit/users_by_type_cubit.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../Hr/employee/presentation/cubit/users_by_type_state.dart';

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

class CustomEmployeeItem extends StatelessWidget {
  const CustomEmployeeItem({
    super.key,
    required this.specialist,
    required this.name,
    this.onTap,
  });

  final String specialist;
  final String name;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        bottom: 20,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              height: 54,
              width: 62,
              child: Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.asset(
                  'assets/hrrr.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    'Specialist - $specialist',
                    style: TextStyle(fontSize: 12, color: AppColors.mediumGrey),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
