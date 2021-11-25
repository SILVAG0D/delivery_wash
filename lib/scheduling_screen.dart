import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SchedelingScreen extends StatefulWidget {
  @override
  _SchedelingScreenState createState() => _SchedelingScreenState();
}

class _SchedelingScreenState extends State<SchedelingScreen> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento'),
        backgroundColor: Colors.blue,
      ),
      body: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        calendarFormat: format,
        onFormatChanged: (CalendarFormat _format) {
          setState(() {
            format = _format;
          });
        },
        startingDayOfWeek: StartingDayOfWeek.sunday,
        daysOfWeekVisible: true,
        onDaySelected: (DateTime selectDay, DateTime focusDay) {
          setState(() {
            selectedDay = selectDay;
            focusedDay = focusDay;
          });
          print(focusedDay);
        },
        selectedDayPredicate: (DateTime date) {
          return isSameDay(selectedDay, date);
        },
        calendarStyle: CalendarStyle(
          isTodayHighlighted: true,
          selectedDecoration:
              BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          selectedTextStyle: TextStyle(
            color: Colors.white,
          ),
          todayDecoration:
              BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        ),
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          formatButtonShowsNext: true,
        ),
      ),
    );
  }
}
