import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/Get%20All%20Calls/get_all_calls_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/calender.dart';

class CalenderBar extends StatefulWidget {
  const CalenderBar({super.key, required this.calenderTextEditingController});
  final TextEditingController calenderTextEditingController;
  @override
  State<CalenderBar> createState() => _CalenderBarState();
}

class _CalenderBarState extends State<CalenderBar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showCalender(context);
      },
      child: Container(
        height: 44,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.verylightGrey,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.centerRight,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.calenderTextEditingController.text,
                style: TextStyles.style16Regular,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              Assets.selectDateFromCalenderIcon,
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }

  void _showCalender(BuildContext context) {
    showModalBottomSheet(
      sheetAnimationStyle: AnimationStyle(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOutBack),
      scrollControlDisabledMaxHeightRatio:
          (MediaQuery.sizeOf(context).height >= 650) ? 0.49.h : 0.5.h,
      context: context,
      builder: (context) {
        return SizedBox.expand(
          child: Calender(
            onDaySelected: (selectedDay, focusedDay) {
              widget.calenderTextEditingController.text =
                  DateFormat('dd . MM . yyyy').format(selectedDay);
              BlocProvider.of<GetAllCallsBloc>(context).filterByDate =
                  DateFormat('yyyy-MM-dd').format(selectedDay);
              BlocProvider.of<GetAllCallsBloc>(context).add(GetAllCallsEvent());

              Navigator.pop(context);
              setState(() {});
            },
          ),
        );
      },
    );
  }
}
