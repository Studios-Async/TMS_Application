import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePageCalendar extends StatefulWidget {
  const HomePageCalendar({Key? key}) : super(key: key);

  @override
  State<HomePageCalendar> createState() => _HomePageCalendarState();
}

class _HomePageCalendarState extends State<HomePageCalendar> {
  final CalendarFormat _calendarFormat =
      CalendarFormat.month; // Default calendar format
  DateTime _focusedDay = DateTime.now(); // The day focused on in the calendar
  DateTime _selectedDay = DateTime.now(); // The currently selected day
  TextStyle weekstyle =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      rowHeight: 55, // Height of each calendar row
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
      daysOfWeekHeight: 50, // Height of the days of the week header
      daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: weekstyle,
          weekendStyle: weekstyle), // Styling for days of the week
      calendarFormat: _calendarFormat, // Set the calendar format
      focusedDay: _focusedDay, // Set the focused day
      firstDay: DateTime.utc(2000, 1, 1), // The first selectable day
      lastDay: DateTime.utc(2030, 12, 31), // The last selectable day
      startingDayOfWeek: StartingDayOfWeek.monday, // Start the week on Monday
      selectedDayPredicate: (day) {
        return isSameDay(
            _selectedDay, day); // Predicate to check if a day is selected
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay; // Update the selected day
          _focusedDay = focusedDay; // Update the focused day
        });
      },
    );
  }
}
