import 'package:flutter/material.dart';
import '../utils/colors.dart';

class HomeWorkItem extends StatelessWidget {
  final int day;
  final String month;
  final String subject;
  final String weekDay;
  final String time;
  final Icon? icon;
  final bool showButton;
  final VoidCallback? onNotePressed;

  const HomeWorkItem({
    Key? key,
    required this.day,
    required this.month,
    required this.subject,
    required this.weekDay,
    required this.time,
    this.icon,
    this.showButton = false,
    this.onNotePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Section Date
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  day.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue800,
                  ),
                ),
                Text(
                  month,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray500,
                  ),
                ),
              ],
            ),
            const SizedBox(
                width: 16.0), // Espacement entre la date et le contenu

            // Section Contenu principal
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue800,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    weekDay,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.gray500,
                    ),
                  ),
                ],
              ),
            ),

            // Section Heure et Actions
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    icon ??
                        const Icon(
                          Icons.access_time,
                          color: AppColors.gray500,
                          size: 20,
                        ),
                    const SizedBox(width: 4.0),
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.gray500,
                      ),
                    ),
                  ],
                ),
                if (showButton)
                  const SizedBox(height: 8.0), // Espacement pour le bouton
                if (showButton)
                  ElevatedButton(
                    onPressed: onNotePressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 8.0,
                      ),
                    ),
                    child: const Text(
                      "Terminé",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
