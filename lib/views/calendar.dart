import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScheduleScreen(),
    );
  }
}

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emploi du Temps"),
        backgroundColor: Colors.teal,
      ),
      body: SfCalendar(
        view: CalendarView.week, // Vue (day, week, workWeek, month, schedule)
        dataSource: EventDataSource(_getDataSource()), // Ajout des événements
        todayHighlightColor: Colors.teal,
        headerStyle: const CalendarHeaderStyle(
          textAlign: TextAlign.center,
          backgroundColor: Colors.teal,
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  List<Appointment> _getDataSource() {
    final List<Appointment> meetings = <Appointment>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
    DateTime(today.year, today.month, today.day, 9, 0); // 9h00
    final DateTime endTime = startTime.add(const Duration(hours: 2)); // 11h00
    meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Réunion Projet',
      color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;COUNT=5', // Répète tous les jours pendant 5 jours
    ));
    meetings.add(Appointment(
      startTime: startTime.add(const Duration(hours: 3)), // 12h00
      endTime: endTime.add(const Duration(hours: 3)), // 14h00
      subject: 'Cours Flutter',
      color: Colors.orange,
    ));
    return meetings;
  }
}

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Appointment> source) {
    appointments = source;
  }
}
