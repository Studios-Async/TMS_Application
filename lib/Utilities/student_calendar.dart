import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class StudentCalendar extends StatefulWidget {
  const StudentCalendar({Key? key}) : super(key: key);

  @override
  State<StudentCalendar> createState() => _StudentCalendarState();
}

class _StudentCalendarState extends State<StudentCalendar> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  TextStyle weekstyle =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      rowHeight: 55,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        leftChevronMargin: EdgeInsets.only(left: 60),
        rightChevronMargin: EdgeInsets.only(right: 60),
      ),
      daysOfWeekHeight: 50,
      daysOfWeekStyle:
          DaysOfWeekStyle(weekdayStyle: weekstyle, weekendStyle: weekstyle),
      calendarFormat: _calendarFormat,
      focusedDay: _focusedDay,
      firstDay: DateTime.utc(2000, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      startingDayOfWeek: StartingDayOfWeek.monday,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
    );
  }
}
