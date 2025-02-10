import 'package:flutter/material.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class IsDoctorOnlineOrNot extends StatelessWidget {
  const IsDoctorOnlineOrNot({
    super.key,
    required this.doctorInfoModel,
  });

  final DoctorInfoModel doctorInfoModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -7,
      bottom: -5,
      child: CircleAvatar(
        radius: 7.5,
        backgroundColor: doctorInfoModel.isOnline
            ? const Color(0xff19D571)
            : const Color(0xffEE8105),
      ),
    );
  }
}
