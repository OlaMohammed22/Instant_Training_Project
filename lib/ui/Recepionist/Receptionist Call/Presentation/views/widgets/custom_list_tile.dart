import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/cubit/select_doctor_cubit.dart';
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectDoctorCubit, SelectDoctorState>(
      builder: (context, state) {
        log(state.toString());
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: state is SelectDoctorFailure
                      ? Colors.red
                      : const Color(0xffE0E0E0),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                onTap: onTap,
                contentPadding: const EdgeInsets.only(left: 16, right: 16),
                title: Text(
                  state is SelectDoctorSuccess ? state.doctor.name : text,
                  style: TextStyles.style16Regular.copyWith(
                    color: const Color(0xff7F7F7F),
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_right,
                  color: Color(0xff7F7F7F),
                  size: 35,
                ),
              ),
            ),
            if (state is SelectDoctorFailure)
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 4),
                child: Text(
                  " *You Have to Select A Doctor ...",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffB3261E),
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}
