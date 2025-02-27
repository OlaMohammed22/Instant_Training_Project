import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled36/core/utils/form_validations.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/employee_list_tile_items_list.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_search_text_form_field.dart';

import '../../../../../Hr/employee/presentation/cubit/users_by_type_cubit.dart';
import '../../../../../Hr/employee/presentation/views/widgets/custom_filter_tabs.dart';

class SelectEmployeeViewBody extends StatefulWidget {
  const SelectEmployeeViewBody({super.key, required this.type});

  final String type;

  @override
  State<SelectEmployeeViewBody> createState() => _SelectEmployeeViewBodyState();
}

class _SelectEmployeeViewBodyState extends State<SelectEmployeeViewBody> {
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
    context.read<UsersByTypeCubit>().fetchUsersByType(
        widget.type == 'Employee' ? selectedType : widget.type);
  }

  void _onTabSelected(String type) {
    setState(() {
      selectedType = type;
    });
    context.read<UsersByTypeCubit>().fetchUsersByType(type);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SearchTextField(
          prefixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
          hint: "Search For ${widget.type}",
          onSaved: (value) {},
          validator: (value) {
            return FormValidation.optionalField(value);
          },
        ),
        widget.type == 'Employee'
            ? CustomFilterTabs(
                tabList: tabList,
                selectedTab: selectedType,
                onTabSelected: _onTabSelected,
              )
            : SizedBox(),
        const EmployeeListTileItemsList(),
        CustomButton(
          text: "Select ${widget.type}",
          width: MediaQuery.sizeOf(context).width,
          onPressed: () {
            Navigator.pop(context);
            // GoRouter.of(context).pop();
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
