import 'package:flutter/material.dart';
import '../utils/colors.dart';

class HomeWorkItem extends StatelessWidget {
  final String day; // Jour (par exemple "15")
  final String month; // Mois (par exemple "Jan")
  final String subject; // Matière (par exemple "Mathematique")
  final String weekDay; // Jour de la semaine (par exemple "Lundi")
  final String time; // Heure (par exemple "14h : 00")
  final Icon? icon; // Icône (facultatif)
  final bool showButton; // Si true, afficher le bouton et changer la couleur
  final VoidCallback?
      onNotePressed; // Fonction à exécuter lorsque le bouton est pressé

  const HomeWorkItem({
    Key? key,
    required this.day,
    required this.month,
    required this.subject,
    required this.weekDay,
    required this.time,
    this.icon,
    this.showButton = false, // Par défaut, le bouton ne sera pas affiché
    this.onNotePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double largeurEcran = MediaQuery.of(context).size.width;

    // Définir la couleur de fond en fonction de showButton
    Color backgroundColor =
        showButton ? Colors.transparent : Colors.transparent;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20), // Marge en bas
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Première colonne avec la date
              Column(
                children: [
                  Text(
                    day,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    month,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // Deuxième colonne avec matière et jour
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                width: largeurEcran - 120,
                decoration: BoxDecoration(
                    color: backgroundColor, // Couleur de fond modifiée
                    border: const Border(
                      bottom: BorderSide(width: 1, color: AppColors.gray500),
                    ),
                    borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Texte pour la matière et le jour
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(subject),
                        Text(
                          weekDay,
                          style: const TextStyle(color: AppColors.gray500),
                        ),
                      ],
                    ),

                    // Icône et texte de l'heure
                    Row(
                      children: [
                        // Afficher l'icône si elle est passée en paramètre
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                icon ?? const Icon(Icons.access_time),
                                Text(time),
                              ],
                            ),
                            // Si showButton est true, afficher le bouton
                            if (showButton)
                              ElevatedButton(
                                onPressed: onNotePressed,
                                child: const Text("Terminé"),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
