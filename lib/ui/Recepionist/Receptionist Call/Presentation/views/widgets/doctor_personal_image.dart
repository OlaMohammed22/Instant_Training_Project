import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/is_doctor_online_or_not.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class DoctorPersonalImage extends StatelessWidget {
  const DoctorPersonalImage({
    super.key,
    required this.doctorInfoModel,
  });

  final DoctorInfoModel doctorInfoModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomRight,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 3),
                color: Color(0xffD6D6D6),
              ),
            ],
            image: (doctorInfoModel.photo != null)
                ? DecorationImage(
                    image: NetworkImage(doctorInfoModel.photo!),
                  )
                : null,
          ),
          child: doctorInfoModel.photo == null
              ? const Icon(
                  Icons.person,
                  size: 50,
                  color: AppColors.verylightGrey,
                )
              : null,
        ),
        IsDoctorOnlineOrNot(
          doctorInfoModel: doctorInfoModel,
        )
      ],
    );
  }
}
