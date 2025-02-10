import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/constants.dart';
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
      child: ListView.builder(
        itemCount: Constants.nurseList.length,
        itemBuilder: (context, ind) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
            child: DoctorListTileItem(
                ind: ind,
                groupValue: groupValue,
                list: Constants.nurseList,
                onChanged: (value) {
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