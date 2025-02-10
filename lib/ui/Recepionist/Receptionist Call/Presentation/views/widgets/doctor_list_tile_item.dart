import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_personal_image.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_personal_info.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class DoctorListTileItem extends StatefulWidget {
  const DoctorListTileItem({
    super.key,
    required this.ind,
    this.groupValue,
    this.onChanged,
    required this.list,
  });
  final int ind;
  final List<DoctorInfoModel> list;
  final DoctorInfoModel? groupValue;
  final void Function(DoctorInfoModel?)? onChanged;

  @override
  State<DoctorListTileItem> createState() => _DoctorListTileItemState();
}

class _DoctorListTileItemState extends State<DoctorListTileItem> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      contentPadding: EdgeInsets.zero,
      activeColor: AppColors.primaryColor,
      overlayColor: const WidgetStatePropertyAll(Colors.grey),
      controlAffinity: ListTileControlAffinity.trailing,
      title: Row(
        children: [
          DoctorPersonalImage(
            doctorInfoModel: widget.list[widget.ind],
          ),
          const SizedBox(
            width: 18,
          ),
          DoctorPersonalInfo(
            doctorInfoModel: widget.list[widget.ind],
          )
        ],
      ),
      value: widget.list[widget.ind],
      groupValue: widget.groupValue,
      onChanged: widget.onChanged,
    );
  }
}
