import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/constants.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/cubit/select_doctor_cubit.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_list_tile_item.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class DoctorListTileItemsList extends StatefulWidget {
  const DoctorListTileItemsList({
    super.key,
  });

  @override
  State<DoctorListTileItemsList> createState() =>
      _DoctorListTileItemsListState();
}

class _DoctorListTileItemsListState extends State<DoctorListTileItemsList> {
  bool selected = false;
  DoctorInfoModel? groupValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Constants.doctorsList.length,
        itemBuilder: (context, ind) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
            child: DoctorListTileItem(
                ind: ind,
                list: Constants.doctorsList,
                groupValue: groupValue,
                onChanged: (value) {
                  SelectDoctorCubit.doctorInfoModel = value;
                  BlocProvider.of<SelectDoctorCubit>(context).selectDoctor();
                  setState(
                    () {
                      groupValue = value;
                    },
                  );
                }),
          );
        },
      ),
    );
  }
}
