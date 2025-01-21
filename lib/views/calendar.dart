import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final List<CalendarEventData> cours = [
    CalendarEventData(
      title: "Mathématiques",
      date: DateTime(2025, 1, 16, 8, 0),
      endDate: DateTime(2025, 1, 16, 10, 0),
      color: const Color(0xFFE8F5E9),
    ),
    CalendarEventData(
      title: "Programmation Flutter",
      date: DateTime(2025, 1, 16, 10, 0),
      endDate: DateTime(2025, 1, 16, 12, 0),
      color: const Color(0xFFFCE4EC),
    ),
    CalendarEventData(
      title: "Algorithmie",
      date: DateTime(2025, 1, 17, 9, 0),
      endDate: DateTime(2025, 1, 17, 11, 0),
      color: const Color(0xFFE3F2FD),
    ),
    CalendarEventData(
      title: "Anglais",
      date: DateTime(2025, 1, 17, 11, 0),
      endDate: DateTime(2025, 1, 17, 12, 30),
      color: const Color(0xFFFFF9C4),
    ),
    CalendarEventData(
      title: "Physique",
      date: DateTime(2025, 1, 18, 8, 0),
      endDate: DateTime(2025, 1, 18, 10, 0),
      color: const Color(0xFFD1C4E9),
    ),
  ];

  // Contrôleur des événements pour gérer les données dynamiques
  late EventController _controller;

  @override
  void initState() {
    super.initState();
    _controller = EventController()..addAll(cours);
  }

  String vueActuelle = "Mois"; // Gérer la vue sélectionnée

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Calendrier des Cours'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: _buildVueCalendrier(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '2025',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              _buildHeaderButton('Jour', vueActuelle == "Jour"),
              _buildHeaderButton('Semaine', vueActuelle == "Semaine"),
              _buildHeaderButton('Mois', vueActuelle == "Mois"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderButton(String text, bool estSelectionne) {
    return GestureDetector(
      onTap: () {
        setState(() {
          vueActuelle = text;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: estSelectionne ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: estSelectionne ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget _buildVueCalendrier() {
    switch (vueActuelle) {
      case "Semaine":
        return WeekView(
          controller: _controller,
          showLiveTimeLineInAllDays: true,
          eventTileBuilder: _eventTileBuilder,
          timeLineBuilder: _timeLineBuilder,
        );
      case "Mois":
        return MonthView(
          controller: _controller,
          onCellTap: (events, date) {
            if (events.isNotEmpty) {
              _afficherDetailsEvenement(events.first);
            }
          },
        );
      case "Jour":
      default:
        return DayView(
          controller: _controller,
          timeLineWidth: 65,
          showLiveTimeLineInAllDays: true,
          heightPerMinute: 1.0,
          eventTileBuilder: _eventTileBuilder,
          timeLineBuilder: _timeLineBuilder,
        );
    }
  }

  Widget _eventTileBuilder(
    DateTime date,
    List<CalendarEventData> events,
    Rect boundary,
    DateTime startDuration,
    DateTime endDuration,
  ) {
    return GestureDetector(
      onTap: () {
        // Afficher un dialogue avec les détails de l'événement
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(events[0].title),
            content: Text(
              'Début : ${startDuration.hour.toString().padLeft(2, '0')}:${startDuration.minute.toString().padLeft(2, '0')}\n'
              'Fin : ${endDuration.hour.toString().padLeft(2, '0')}:${endDuration.minute.toString().padLeft(2, '0')}',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Fermer'),
              ),
            ],
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: events[0].color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                events[0].title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${startDuration.hour.toString().padLeft(2, '0')}:${startDuration.minute.toString().padLeft(2, '0')} - '
                '${endDuration.hour.toString().padLeft(2, '0')}:${endDuration.minute.toString().padLeft(2, '0')}',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _timeLineBuilder(DateTime date) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        '${date.hour}:${date.minute.toString().padLeft(2, '0')}',
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  void _afficherDetailsEvenement(CalendarEventData evenement) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(evenement.title),
        content: Text(
          'Début : ${evenement.date.hour.toString().padLeft(2, '0')}:${evenement.date.minute.toString().padLeft(2, '0')}\n'
          'Fin : ${evenement.endDate.hour.toString().padLeft(2, '0')}:${evenement.endDate.minute.toString().padLeft(2, '0')}',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fermer'),
          ),
        ],
      ),
    );
  }
}
