import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20All%20Nurse%20Bloc/get_all_nurse_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20All%20Nurse%20Bloc/get_all_nurse_state.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_list_tile_item.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class NurseListTileItemsList extends StatefulWidget {
  const NurseListTileItemsList({
    super.key,
  });

  @override
  State<NurseListTileItemsList> createState() => _NurseListTileItemsListState();
}

class _NurseListTileItemsListState extends State<NurseListTileItemsList> {
  bool selected = false;
  DoctorInfoModel? groupValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetAllNurseBloc, GetAllNurseState>(
        builder: (context, state) {
          if (state is GetAllNurseFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else if (state is GetAllNurseSuccess) {
            if (state.data.length == 0) {
              return Center(
                child: Text("No Nurses"),
              );
            } else {
              return ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, ind) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    child: DoctorListTileItem(
                      ind: ind,
                      groupValue: groupValue,
                      list: state.data,
                      onChanged: (value) {
                        setState(
                          () {
                            groupValue = value;
                          },
                        );
                      },
                    ),
                  );
                },
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.black,
              ),
            );
          }
        },
      ),
    );
  }
}
