import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../commen_screens/auth/presentation/views/widgets/custom_app_bar.dart';
import '../../../../Reports/Presentation/cubit/profile/profile_cubit.dart';
import '../../../../Reports/Presentation/views/widgets/profilescreen.dart';
import '../../cubit/users_by_type_cubit.dart';
import '../../cubit/users_by_type_state.dart';
import 'custom_employee_item.dart';
import 'custom_filter_tabs.dart';
import 'custom_search_text_field.dart';

class EmployeeViewBody extends StatefulWidget {
  const EmployeeViewBody({super.key});

  @override
  _EmployeeViewBodyState createState() => _EmployeeViewBodyState();
}

class _EmployeeViewBodyState extends State<EmployeeViewBody> {
  final List<String> tabList = [
    'All',
    'Doctor',
    'Nurse',
    'HR',
    'Analysis',
    'Receptionist',
    'Manger'
  ];
  String selectedType = 'All';

  @override
  void initState() {
    super.initState();
    context.read<UsersByTypeCubit>().fetchUsersByType(selectedType);
  }

  void _onTabSelected(String type) {
    setState(() {
      selectedType = type;
    });
    context.read<UsersByTypeCubit>().fetchUsersByType(type);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersByTypeCubit, UsersByTypeState>(
      builder: (context, state) {
        if (state is UsersByTypeLoaded) {
          final users = state.users.data ?? [];

          return CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      CustomAppBar(title: 'Employee'),
                      SizedBox(height: 24),
                      CustomSearchTextField(hintText: 'Employee'),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CustomFilterTabs(
                  tabList: tabList,
                  onTabSelected: _onTabSelected,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: users.length,
                  (context, index) {
                    final user = users[index];
                    return CustomEmployeeItem(
                      employeeImage: user.avatar ?? '',
                      specialist: user.type ?? '',
                      name: user.firstName ?? '',
                      onTap: () {
                        context.read<ProfileCubit>().showProfile(user.id);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
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
