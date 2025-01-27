import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

DateTime get _now => DateTime.now();

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  // Liste des cours ajoutés au calendrier
  final List<CalendarEventData> cours = [];

  late EventController _controller; // Contrôleur des événements
  String vueActuelle = "Mois"; // Vue actuelle (par défaut : Mois)

  void _ajouterTransformationDigitale() {
    cours.addAll([
      CalendarEventData(
        title: "Introduction à la Transformation Digitale",
        date: DateTime(2025, 2, 1, 9, 0),
        endDate: DateTime(2025, 2, 1, 11, 0),
        color: const Color(0xFFBBDEFB),
      ),
      CalendarEventData(
        title: "Technologies Disruptives",
        date: DateTime(2025, 2, 2, 10, 0),
        endDate: DateTime(2025, 2, 2, 12, 0),
        color: const Color(0xFFC8E6C9),
      ),
      CalendarEventData(
        title: "Digitalisation des Processus",
        date: DateTime(2025, 2, 3, 13, 0),
        endDate: DateTime(2025, 2, 3, 15, 0),
        color: const Color(0xFFFFF59D),
      ),
      CalendarEventData(
        title: "Culture Numérique en Entreprise",
        date: DateTime(2025, 2, 4, 14, 0),
        endDate: DateTime(2025, 2, 4, 16, 0),
        color: const Color(0xFFF8BBD0),
      ),
      CalendarEventData(
        title: "Gestion des Données",
        date: DateTime(2025, 2, 5, 11, 0),
        endDate: DateTime(2025, 2, 5, 13, 0),
        color: const Color(0xFF80CBC4),
      ),
      CalendarEventData(
        title: "Cloud Computing et Virtualisation",
        date: DateTime(2025, 2, 8, 10, 0),
        endDate: DateTime(2025, 2, 8, 12, 0),
        color: const Color(0xFFD1C4E9),
      ),
      CalendarEventData(
        title: "Big Data et Analyse Prédictive",
        date: DateTime(2025, 2, 9, 14, 0),
        endDate: DateTime(2025, 2, 9, 16, 0),
        color: const Color(0xFFFFCCBC),
      ),
      CalendarEventData(
        title: "Sécurité et Protection des Données",
        date: DateTime(2025, 2, 10, 8, 0),
        endDate: DateTime(2025, 2, 10, 10, 0),
        color: const Color(0xFFB3E5FC),
      ),
      CalendarEventData(
        title: "Stratégies Digitales",
        date: DateTime(2025, 2, 11, 9, 0),
        endDate: DateTime(2025, 2, 11, 11, 0),
        color: const Color(0xFFA5D6A7),
      ),
      CalendarEventData(
        title: "Impact du Digital sur les Modèles Économiques",
        date: DateTime(2025, 2, 12, 15, 0),
        endDate: DateTime(2025, 2, 12, 17, 0),
        color: const Color(0xFFFFAB91),
      ),
    ]);
  }

  @override
  void initState() {
    super.initState();
    ;
    _ajouterTransformationDigitale();
    _controller = EventController()..addAll(cours);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Calendrier des Cours',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.blue800,
      ),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: _buildVueCalendrier(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // En-tête avec boutons pour changer de vue
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

  // Bouton d'en-tête
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

  // Vue du calendrier basée sur la vue sélectionnée
  Widget _buildVueCalendrier() {
    switch (vueActuelle) {
      case "Semaine":
        return WeekView(
          controller: _controller,
          eventTileBuilder: _eventTileBuilder,
          timeLineBuilder: _timeLineBuilder,
          showLiveTimeLineInAllDays: true,
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
          eventTileBuilder: _eventTileBuilder,
          timeLineBuilder: _timeLineBuilder,
        );
    }
  }

  // Widget pour afficher un événement dans le calendrier
  Widget _eventTileBuilder(
    DateTime date,
    List<CalendarEventData> events,
    Rect boundary,
    DateTime startDuration,
    DateTime endDuration,
  ) {
    return GestureDetector(
      onTap: () => _afficherDetailsEvenement(events[0]),
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
                  fontWeight: FontWeight.bold,
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

  // Builder pour afficher l'heure sur la timeline
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

  // Afficher les détails de l'événement dans un dialogue
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
