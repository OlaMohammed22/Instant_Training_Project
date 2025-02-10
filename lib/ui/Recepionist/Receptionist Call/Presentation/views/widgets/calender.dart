//yes
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatelessWidget {
  const Calender({
    super.key, this.onDaySelected,
  });
final Function(DateTime, DateTime)? onDaySelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(
            24,
          ),
        ),
      ),
      child: TableCalendar(
        onDaySelected:onDaySelected ,
        headerStyle: const HeaderStyle(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          titleCentered: true,
          formatButtonVisible: false,
        ),
        calendarStyle: const CalendarStyle(
          outsideDaysVisible: false,
          weekendTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          todayTextStyle: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
          ),
          todayDecoration: BoxDecoration(
            color: Color(0xffE0EFFF),
            shape: BoxShape.circle,
          ),
          defaultTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        firstDay: DateTime.utc(2010, 10, 16),
        daysOfWeekStyle: DaysOfWeekStyle(
          dowTextFormatter: (date, locale) {
            return DateFormat.E(locale).format(date).toUpperCase();
          },
          weekdayStyle: const TextStyle(
            color: Color.fromARGB(255, 179, 179, 180),
          ),
          weekendStyle: const TextStyle(
            color: Color.fromARGB(255, 179, 179, 180),
          ),
        ),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
      ),
    );
  }
}
